faculty.factory('dataPortalService',['$http', '$timeout', '$rootScope','$window','$location', function($http, $timeout, $rootScope,$window,$location){
	/*data portal*/ 
	return {
		getCourse: function(college, callback) {
			$http({
				method: "GET",
				url: BACKEND + '/getCourse',
				params: {
					college_name: college
				}
			}).then(function(response) {
				if (callback) {
					console.log(response.data);
					console.log(typeof response.data);
					callback(response.data);
				}
			}, function(response) {
				if (callback) {
					console.error(response.data);
					callback(response.data);
				}
			})
		},

		getStream:  function(college, course, callback) {
			$http({
				method: "GET",
				url: BACKEND + '/getStream',
				params: {
					college_name : college,
					course: course
				}
			}).then(function(response) {
				if (callback) {
					callback(response.data);
				}

			}, function(response) {
				if (callback) {
					console.error(response.data);
					callback(response.data);
				}
			})
		},

		getSubjects: function(college, course, stream, selectedSem, callback) {
			$http({
				method: 'GET',
				url: BACKEND + '/getSubjects',
				params: {
					college: college,
					course: course,
					stream: stream,
					semester: selectedSem
				}
			}).then(function(response) {
				if (callback) {
					callback(response.data);
				}
			}, function(response) {
				if (callback) {
					console.error(response);
					callback(response.data);
				}
			})
		},

		getRecordedSubjects: function(school,course,stream,semester, callback) {
			$http({
				method: 'GET',
				url: BACKEND + '/getRecordedSubjects',
				params: {school,course,stream,semester}
			}).then(function(response) {
				if (callback) {
					callback(response.data);
				}
			}, function(response) {
				if (callback) {
					console.error(response);
					return alert(response.data.message);
					callback(response.data);
				}
			})
		},

		deleteRecordedSubject: function(batch_id,feedback_id,school,callback){
			$http({
				method: 'POST',
				url: BACKEND + '/deleteRecordedSubject',
				data: {batch_id,feedback_id,school}
			}).then(function(response) {
				if (callback) {
					alert(response.data.message);
					callback(response.data);
				}
			}, function(response) {
				if (callback) {
					console.error(response);
					return alert(response.data.message);
				}
			})
		},

		updateRecordedSubjects: function(data,school,callback){
			$http({
				method: 'POST',
				url: BACKEND + '/updateRecordedSubjects',
				data: {data,school}
			}).then(function(response) {
				alert(response.data.message);
				if(callback) callback();
			}, function(response) {
				console.error(response);
				return alert(response.data.message);
			})
		},

		getTeacher: function(callback) {
			$http({
				method:'GET',
				url: BACKEND + '/getTeacher'
			}).then(function(response) {
				if (callback) {
					callback(response.data);
				}
			}, function(response) {
				if (callback) {
					console.error(response);
					callback(response);
				}
			})
		},


		sendSubjectData : function(college, course, stream, selectedSem, subject_data, callback) {
			$http({
				method:'POST',
				url: BACKEND + '/createFeedback',
				params: {
					data : subject_data,
					college : college,
					course : course,
					stream: stream,
					semester: selectedSem
				}
			}).then(function(response) {
				if (callback) {
					callback(response.data);
				}
			}, function(response) {
				if (callback) {
					console.error(response);
					callback(response);
				}
			})
		}


	}
}])
