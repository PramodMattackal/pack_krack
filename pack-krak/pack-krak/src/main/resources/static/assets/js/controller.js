app.controller("packkrakController", function($scope, $http) {
	$scope.formData = {};
	$scope.processForm = function() {

		$http({
			method : 'POST',
			url : '/createUser',
			data : $scope.formData	, // pass in data as strings
			headers : {
				'Content-Type' : 'application/json'
			}
		// set the headers so angular passing info as form data (not request payload)
		}).success(function(data) {
			console.log(data);
			if(data.userName === undefined){
				$scope.message = "User creation failed with bad request";
			}else{
				$scope.message = "User "+data.userName+" has been created";
			}
		}).error(function (data) {
			console.log(data);
			$scope.message = "User creation failed";
        });
	};
});