var con = require("../../models/mysql"),
  ses = require("node-ses"),
  async = require("async"),
  controller = require("../../models/config"),
  nodemailer = require("nodemailer");
const { reject } = require("lodash");

module.exports = {
  getTeacher: function(req, res) {
    var query = "select instructor_id,name,designation,school from employee";
    con.query(query, function(err, Employees) {
      if (err) {
        console.log(err);
      } else {
        res.json(Employees);
      }
    });
  },

  getCourse: function(req, res) {
    var college_name = req.query.college_name;

    var query = "select Distinct course from ??";
    con.query(query, [college_name + "_batch_allocation"], function(
      err,
      courseList
    ) {
      if (err) {
        console.log(err);
      }

      res.json(courseList);
    });
  },

  getStream: function(req, res) {
    var college_name = req.query.college_name;
    var course = req.query.course;

    var query = "select Distinct stream from ?? where course = ?";

    con.query(query, [college_name + "_batch_allocation", course], function(
      err,
      streamList
    ) {
      if (err) {
        console.log(err);
      }
      console.log(streamList);
      res.json(streamList);
    });
  },

  getSubjects: function(req, res) {
    console.log("Get Subjects");
    console.log(req.query);
    var college_name = req.query.college;
    var course = req.query.course;
    var stream = req.query.stream;
    var semester = req.query.semester;
    var query =
      "select subject_name, subject_code, type from ?? as t1 inner join ?? as t2 on t1.batch_id = t2.batch_id where " +
      " course = ? and stream = ? and semester = ?";
    console.log(query);
    con.query(
      query,
      [
        college_name + "_batch_allocation",
        college_name + "_subject_allocation_2016",
        course,
        stream,
        semester
      ],
      function(err, subjectList) {
        if (err) {
          console.log(err);
        }
        console.log(subjectList.length);
        res.json(subjectList);
      }
    );
  },

  getRecordedSubjects:function(req,res){
    var {school,course,stream,semester}=req.query;
    var batchAllocatiomTable = school + "_batch_allocation",
        subjectAllocationTable =`${school}_subject_allocation_${process.env.year}`;
    var getBatch =(
        "select batch_id from " +
        batchAllocatiomTable +
        " where course=? and stream=? and semester = ?"
    );
    console.log(getBatch)

    con.query(getBatch,[course,stream,semester],function(err,batch){
      if(err){
        return res.status(404).send({message:'No batch exists with the selected fields'});
      }
      console.log(batch,'batch');
      if(batch.length==0){
        return res.status(404).send({message:'No batch exists with the selected fields'});
      }
      batch=batch[0].batch_id;

      var subjects=`SELECT * FROM ${subjectAllocationTable} WHERE batch_id=?`;

      con.query(subjects,[batch],function(err,data){
        if(err){
          return res.status(404).send({message:'No subjects for this batch'})
        }
        res.status(200).send(data);
      })
    })
  },

  deleteRecordedSubject:function(req,res){
    const {batch_id,feedback_id, school}=req.body;
    const batchQ= `SELECT * FROM ?? WHERE batch_id=?`;

    var batch;
    con.query(batchQ,[`${school}_batch_allocation`,batch_id],(err,b)=>{
      if(err){
        console.log(err);
        return res.status(404).send({message:'Batch does not exist'});
      }
      batch=b[0];

      const checkIfFBExist=`SELECT no_of_students_evaluated from ?? where feedback_id=?`;
      
      con.query(checkIfFBExist,[`${school}_feedback_${process.env.year}`,feedback_id],(err,data)=>{
        if(err){
          console.log(err);
          return res.status(404).send({message:'Feedback error'});
        }
        if(data[0].no_of_students_evaluated) return res.status(403).send({message:"Can't delete subject, feedback already exists"});


        // start deletetion
        const t1=`${school}_subject_allocation_${process.env.year}`,
              t2=`${school}_feedback_${process.env.year}`;
        const deleteQ='delete ??,?? from ?? inner join ?? on ??.feedback_id=??.feedback_id where ??.feedback_id=?';
        con.query(deleteQ,[t1,t2,t1,t2,t1,t2,t1,feedback_id],(err,data)=>{
          if(err){
            console.log(err);
            return res.status(400).send({message:'Subject deletion failed'});
          }
          res.status(200).send({message:'Subject deleted'});
        })
      })
    })
  },

  updateRecordedSubjects:async function(req,res){
    let {data,school}=req.body;
    
    // fb_id,ins_code,sub_code,sub_name,type
    console.log(req.body);
    console.log(data);
    console.log(school);
    console.log(process.env.year);

    function checkIfFeedback(fb_id,school){
      let q=`SELECT no_of_students_evaluated from ?? where feedback_id=?`;
      return new Promise((resolve,reject)=>{

        console.log(fb_id);
        
        con.query(q,[`${school}_feedback_${process.env.year}`,fb_id],(err,res)=>{
          if(err){
            console.log(err);
            
            return reject();
          }
          console.log(q);
          console.log(res);
          if(res[0].no_of_students_evaluated) {
            return reject();
          }
          return resolve();
        })
      })
    }

    try{
      await Promise.all(data.map(async d=>{
        try{
          await checkIfFeedback(d.feedback_id,school);
        }catch(e){
          console.log(e);
          return Promise.reject(null);
        }
        return new Promise((resolve,reject)=>{
          let q=`update ?? set instructor_code=?,subject_code=?,subject_name=?,type=? where feedback_id=?`,
              q2=`update ?? set instructor_id=? where feedback_id=?`;
          con.query(q,[`${school}_subject_allocation_${process.env.year}`,d.instructor_code,d.subject_code,d.subject_name,d.type,d.feedback_id],(err,resp)=>{
            if(err){
              console.log(err);
              reject(null);
            }

            con.query(q2,[`${school}_feedback_${process.env.year}`,d.instructor_code,d.feedback_id],(err,resp)=>{
              if(err){
                console.log(err);
                reject(null);
              }
              resolve(null);
            })
          })
        })
      }));
      return res.status(200).send({message:'All subjects updated'});
    }catch(e){
      console.log(e);
      return res.status(400).send({message:'Some subjects not updated because feedback is provided for those subjects. Please click on Search to check the subjects again.Please mail at sdcusict@ipu.ac.in in case of any issues.'});
    }
  },

  createFeedback: function(req, res) {
    var spread=(...p)=>p;
    console.log("createFeedback");
    //console.log(req.query.data);
    var details = req.query;
    console.log(details);
    var Datas = details.data;
    if(typeof Datas=='string'){
      console.log("hit");
      Datas=spread(Datas);   
    }
    console.log(Datas);

    async.each(
      Datas,
      function(detail, callback) {
        console.log("*");
        console.log(detail);
        detail=JSON.parse(detail);
        
        if (detail.teacher_name) {
          //console.log(typeof detail.teacher_name);
          //console.log(typeof detail);
          var teacherName = detail.teacher_name.toString();
          //console.log(typeof teacherName);
          var temp = teacherName.split(" ");
          //console.log(temp);
          var school = details.college;
          var course = details.course;
          var stream = details.stream;
          var semester = details.semester;
          var teacherId = temp[temp.length - 1];
          var subjectId = detail.subject_code;
          var subjectName = detail.subject_name;
          var type = detail.type;
          console.log(temp);
          console.log(school);
          console.log(course);
          console.log(stream);
          console.log(semester);
          console.log(teacherId);
          console.log(subjectId);
          console.log(subjectName);
          console.log(type);
          var subjectAllocationTable =
            school + "_subject_allocation_" + `${process.env.year}`;
          var batchAllocatiomTable = school + "_batch_allocation";
          var feedbackTable = school + "_feedback_" + `${process.env.year}`;
          var getBatch =
            "select batch_id from " +
            batchAllocatiomTable +
            " where course=? and stream=? and semester = ?";
          var insertSA =
            "INSERT INTO " +
            subjectAllocationTable +
            " (`batch_id`,`subject_code`, `instructor_code`, `subject_name`, `type`) VALUES" +
            " (?, ?, ?, ?, ? );";
          var insertF =
            "INSERT INTO " +
            feedbackTable +
            ' (`feedback_id`, `instructor_id`, `subject_code`, `type`, `total`, `at_1`, `at_2`, `at_3`, `at_4`, `at_5`, `at_6`, `at_7`, `at_8`, `at_9`, `at_10`, `at_11`, `at_12`, `at_13`, `at_14`, `at_15`, `no_of_students_evaluated`) VALUES (?, ?,"","",0,"0","0","0","0","0","0","0","0","0","0","0","0","0","0","0",0)';
          console.log(getBatch);
          console.log("****************************************************");
          con.query(getBatch, [course, stream, semester], function(
            err,
            batchId
          ) {
            if (err) {
              console.log(err);
            } else {
              console.log("insertion happening");
              console.log(batchId);
              console.log(insertSA);
              console.log(
                "****************************************************"
              );
              con.query(
                insertSA,
                [batchId[0].batch_id, subjectId, teacherId, subjectName, type],
                function(err, result) {
                  if (err) {
                    console.log(err);
                  } else {
                    console.log(result.insertId); //Feedback Id
                    console.log(insertF);
                    console.log(
                      "****************************************************"
                    );
                    con.query(insertF, [result.insertId, teacherId], function(
                      err,
                      res
                    ) {
                      if (err) {
                        console.log(err);
                      } else {
                        console.log("Feedback table");
                        console.log(res);
                      }
                    });
                  }
                }
              );
            }
          });
        }
        callback();
      },
      function(error, Result) {
        if (error) {
          console.log(error);
          var obj = {
            status: 400,
            message: "Something went wrong!! Please try again"
          };
        } else {
          console.log("Data recorded");
          var obj = { status: 200, message: "Your data is recorded" };
          console.log(obj);
          res.json(obj);
        }
      }
    );
  }
};
