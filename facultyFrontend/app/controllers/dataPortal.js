faculty.controller("dataPortalCtrl", [
  "$http",
  "$scope",
  "dataPortalService",
  "$location",
  function ($http, $scope, dataPortalService, $location) {
    $scope.instructors_map = {};

    $scope.disabled = false;

    $scope.subjects_data = [];

    $scope.collegeList = [
      {
        collegeName: "University School of Architecture and Planning",
        collegeCode: "usap",
      },

      {
        collegeName: "University School of Automation and Robotics",
        collegeCode: "usar",
      },

      {
        collegeName: "University School of Basic and Applied Sciences",
        collegeCode: "usbas",
      },

      {
        collegeName: "University School of BioTechnology",
        collegeCode: "usbt",
      },

      {
        collegeName: "University School of Chemical Technology",
        collegeCode: "usct",
      },

      {
        collegeName: "University School of Design and Innovation",
        collegeCode: "usdi",
      },

      {
        collegeName: "University School of Education",
        collegeCode: "use",
      },

      {
        collegeName: "University School of Environment Management",
        collegeCode: "usem",
      },

      {
        collegeName: "University School of Humanities and Soc. Sciences",
        collegeCode: "ushss",
      },

      {
        collegeName: "University School of Info.,Comm. and Technology",
        collegeCode: "usict",
      },

      {
        collegeName: "University School of Law and Legal Studies",
        collegeCode: "uslls",
      },

      {
        collegeName: "University School of Mass Communication",
        collegeCode: "usmc",
      },

      {
        collegeName: "University School of Management Studies",
        collegeCode: "usms",
      },
    ];

    $scope.semesterList = [2, 4, 6, 8, 10, 12];

    $scope.courseList = [];

    $scope.check = 0;

    $scope.recorded_subjects_data = [];

    $scope.stream = [];
    var data_value = {};
    $scope.searched = false;
    // $scope.disabledataPortal=true;

    $scope.changeFlag = function (item) {
      if (!angular.isUndefined(item.teacher_name)) {
        item.flag = 1;
        dataPortalService.getTeacher(function (res) {
          res.forEach(function (val) {
            if (item.teacher_name == val.name + " " + val.instructor_id) {
              item.flag = 2;
              return;
            }
          });
        });
      }
    };

    $scope.collegeSelected = function () {
      if (!$scope.selectedCollege) {
        return;
      }

      var college = $scope.selectedCollege;
      var collegeCode = "";

      var CollegeCodes = _.where($scope.collegeList, { collegeName: college });
      _.forEach($scope.collegeList, function (value, key) {
        if (value.collegeName == college) {
          $scope.collegeCode = value.collegeCode;
        }
      });

      if ($scope.collegeCode) {
        dataPortalService.getCourse($scope.collegeCode, function (responce) {
          if (responce) {
            $scope.courseList = responce;
            // $scope.courseList = JSON.parse(responce);
            //console.log("Courses:: "+$scope.courseList);
            $(document).ready(function () {
              $("select").material_select();
            });
          }
        });
      }
    };

    $scope.courseSelected = function () {
      if (!$scope.selectedCourse || !$scope.selectedCollege) {
        return;
      }

      if ($scope.collegeCode && $scope.selectedCourse) {
        dataPortalService.getStream(
          $scope.collegeCode,
          $scope.selectedCourse,
          function (responce) {
            if (responce) {
              $scope.streamList = responce;
              $(document).ready(function () {
                $("select").material_select();
              });
            }
          }
        );
      }
    };

    $scope.getTeachers = function () {
      dataPortalService.getTeacher(function (res) {
        res.forEach(function (val) {
          data_value[val.name + " " + val.instructor_id] = null;
          $scope.instructors_map[val.instructor_id] = val.name;
          // init autocomplete
          $(document).ready(function () {
            $("input.autocomplete").autocomplete({
              data: data_value,
            });
          });
        });

        $scope.recorded_subjects_data = $scope.recorded_subjects_data.map(
          (d) => ({
            ...d,
            teacher_name: `${$scope.instructors_map[d.instructor_code]} ${
              d.instructor_code
            }`,
          })
        );
      });
    };

    $scope.streamSelected = function () {
      if (
        !$scope.selectedCollege ||
        !$scope.selectedCourse ||
        !$scope.selectedStream
      ) {
        return;
      }
    };

    $scope.search = function () {
      $scope.searched = true;

      dataPortalService.getRecordedSubjects(
        $scope.collegeCode,
        $scope.selectedCourse,
        $scope.selectedStream,
        $scope.selectedSem,
        function (response) {
          if (response) {
            $scope.recorded_subjects_data = response;

            dataPortalService.getSubjects(
              $scope.collegeCode,
              $scope.selectedCourse,
              $scope.selectedStream,
              $scope.selectedSem,
              function (response) {
                if (response) {
                  $scope.subjects_data = response;
                  $scope.check = $scope.subjects_data.length;
                  for (var i = 0; i < $scope.check; i++) {
                    $scope.subjects_data[i].flag = 0;
                  }
                  $(document).ready(function () {
                    $("select").material_select();
                  });

                  if ($scope.recorded_subjects_data.length) {
                    $scope.subjects_data = [];
                    $scope.check = 0;
                  }

                  $scope.getTeachers();
                }
              }
            );
          }
        }
      );
    };

    $scope.deleteSubject = function (index) {
      $scope.subjects_data.splice(index, 1);
      $scope.check = $scope.check - 1;
    };

    $scope.submit = function () {
      $scope.disabled = true;

      console.log($scope.subjects_data);
      for (var i = 0; i < $scope.check; i++) {
        if ($scope.subjects_data[i].flag == 0) {
          alert("Kindly fill names of all faculty members");
          $scope.disabled = false;
          return;
        } else if ($scope.subjects_data[i].flag == 1) {
          alert("Kindly fill names from dropdown only");
          $scope.subjects_data[i].flag = 0;
          $scope.disabled = false;
          return;
        }

        $scope.subjects_data[i].subject_code =
          $scope.subjects_data[i].subject_code.toUpperCase();
      }

      //$window.alert("Data recorded");
      dataPortalService.sendSubjectData(
        $scope.collegeCode,
        $scope.selectedCourse,
        $scope.selectedStream,
        $scope.selectedSem,
        $scope.subjects_data,
        async function (res) {
          if (res.status == 200) {
            alert(res.message);
            await $location.path("/");
            window.location.reload();
            $scope.subjects_data = [];
            $scope.check = 0;
            $scope.search();
          } else {
            alert("An error occured. Please try again");
            //location.reload();
          }
        }
      );
    };

    $scope.deleteSubjectRecord = function (ind) {
      if (!confirm("Are you sure to delete this subject ?")) return;

      let subject = $scope.recorded_subjects_data[ind];

      // $scope.recorded_subjects_data=$scope.recorded_subjects_data.filter((s,i)=>i!=ind);

      dataPortalService.deleteRecordedSubject(
        subject.batch_id,
        subject.feedback_id,
        $scope.collegeCode,
        function (d) {
          $scope.recorded_subjects_data.splice(ind, 1);
        }
      );
    };

    $scope.updateSubjects = function () {
      $scope.recorded_subjects_data = $scope.recorded_subjects_data.map((d) => {
        return {
          ...d,
          instructor_code: d.teacher_name.split(" ").pop(),
          subject_code: d.subject_code.toUpperCase(),
        };
      });
      dataPortalService.updateRecordedSubjects(
        $scope.recorded_subjects_data,
        $scope.collegeCode,
        function () {
          $scope.search();
        }
      );
    };

    $scope.add = function () {
      $scope.subjects_data.push({
        subject_name: "",
        type: "",
        subject_code: "",
        teacher_name: "",
        flag: 0,
      });

      $(document).ready(function () {
        $("select").material_select();
      });

      $scope.check = $scope.check + 1;
      $scope.getTeachers();
    };
  },
]);
