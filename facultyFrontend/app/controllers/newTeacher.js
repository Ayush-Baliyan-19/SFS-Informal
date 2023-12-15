
faculty.controller('newTeacherCtrl', ['$http', '$scope', 'teacherService', '$window', '$location', function ($http, $scope, teacherService, $window, $location) {
	$scope.formActive = false;
	$scope.fieldTouch = [false, false, false, false];
	console.log($scope)
	$scope.collegeList = [{
		collegeName: "University School of Architecture and Planning",
		collegeCode: "usap"
	},

	{
		collegeName: "University School of Automation and Robotics",
		collegeCode: "usar"
	},

	{
		collegeName: "University School of Basic and Applied Sciences",
		collegeCode: "usbas"
	},

	{
		collegeName: "University School of BioTechnology",
		collegeCode: "usbt"
	},

	{
		collegeName: "University School of Chemical Technology",
		collegeCode: "usct"
	},

	{
		collegeName: "University School of Design and Innovation",
		collegeCode: "usdi"
	},

	{
		collegeName: "University School of Education",
		collegeCode: "use"
	},

	{
		collegeName: "University School of Environment Management",
		collegeCode: "usem"
	},

	{
		collegeName: "University School of Humanities and Soc. Sciences",
		collegeCode: "ushss"
	},

	{
		collegeName: "University School of Info.,Comm. and Technology",
		collegeCode: "usict"
	},

	{
		collegeName: "University School of Law and Legal Studies",
		collegeCode: "uslls"
	},

	{
		collegeName: "University School of Mass Communication",
		collegeCode: "usmc"
	},

	{
		collegeName: "University School of Management Studies",
		collegeCode: "usms"
	},
	];

	$scope.desigList = ['Professor', 'Associate Professor', 'Assistant Professor', 'Guest Faculty', 'PhD Scholar']

	$scope.flag = 0;

	$scope.openForm = function () {
		$scope.formActive = true;
	}

	$scope.collegeSelected = function () {
		if (!$scope.selectedCollege) {
			return;
		}

		var coll = $scope.selectedCollege;
		var collegeCode = "";

		var CollegeCodes = _.where($scope.collegeList, {
			collegeName: coll
		});
		_.forEach($scope.collegeList, function (value, key) {

			if ((value.collegeName) == (coll)) {
				$scope.college = value.collegeCode;
			}

		})
	}

	$scope.checkPassword = function () {

		if ($scope.password == $scope.repeat) {
			return;
		}

		else {
			$scope.flag = 1;
			$scope.password = "";
			$scope.repeat = "";
			alert("The password do not match. Please try again");
		}
	}


	$scope.getTeachers = function () {
		var data_value = {};
		teacherService.getTeacher(function (res) {
			res.forEach(function (val) {
				data_value[val.name + ' ' + val.instructor_id] = null;
				// init autocomplete
				$(document).ready(function () {
					$('#teacher_name').autocomplete({
						data: data_value,
					});

				});
			})

			$scope.recorded_subjects_data = $scope.recorded_subjects_data.map(d => ({
				...d,
				'teacher_name': `${$scope.instructors_map[d.instructor_code]} ${d.instructor_code}`
			}))
		})
	}

	$scope.submit = function () {


		if (!checkData() && $scope.flag == 0) {
			alert("Please fill all the details");
			return;
		}

		teacherService.addTeacher($scope.name, $scope.email, $scope.phone, $scope.designation, $scope.room_no, $scope.college, $scope.password, function (res) {
			console.log(res)
			if (res) {
				window.localStorage.setItem('newUserDetails', JSON.stringify({instructor_id:res.instructor_id, school:res.school}));
				document.getElementById("instructor_id_newTeacher").value = res.instructor_id;
				document.getElementById("instructor_school_newTeacher").value = res.school;
				localStorage.getItem("uploadedImage") && document.getElementById('newTeacherImageSubmitButton').click();
				$window.alert(res.message);
			} else {
				$window.alert("An error occured. Please try again");
				$location.path("/newTeacher");
			}
		})
	}

	function checkData() {
		if (!$scope.name || !$scope.email || !$scope.phone || !$scope.designation || !$scope.room_no || !$scope.college || !$scope.password || !$scope.repeat) {
			return false;
		}
		return true;
	}

	$scope.getTeachers();
}])