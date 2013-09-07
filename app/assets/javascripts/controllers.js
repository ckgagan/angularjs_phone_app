'use strict';

/* Controllers */

// function PhoneListCtrl($scope, Phone) {
//   $scope.phones = Phone.query();
//   $scope.orderProp = 'age';
// }

function PhoneListCtrl($scope, $http, $routeParams) {
  $scope.phoneId = $routeParams.phoneId;
  $http.get('/phones.json').success(function(data) {
    $scope.phones = data;
  });

   $scope.hello = "Hello, World!"
   $scope.orderProp = "age";
}


//PhoneListCtrl.$inject = ['$scope', 'Phone'];



function PhoneDetailCtrl($scope, $routeParams, Phone) {
  $scope.phone = Phone.get({phoneId: $routeParams.phoneId}, function(phone) {
    $scope.mainImageUrl = phone.images[0]['image']['url'];
  });

  $scope.setImage = function(imageUrl) {
    $scope.mainImageUrl = imageUrl;
  }
}

//PhoneDetailCtrl.$inject = ['$scope', '$routeParams', 'Phone'];
