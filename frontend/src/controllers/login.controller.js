(function() {
    'use strict';

    app.controller('loginCtrl', function($scope, $location, $rootScope, $log, AuthService) {

        $scope.login = function(user) {
            AuthService.login(user).then(function(user) {

                if (angular.isDefined(user)) { // login successful 
                    $rootScope.isUserLoggedIn = true;
                    $rootScope.loggedInUser = user.userName;
                } else {
                    $scope.closeThisDialog(true);
                    $location.path('/');
                    return;
                }

                if (user.userIsAdmin === true) {
                    $rootScope.isAdmin = true;
                    $scope.closeThisDialog(true);
                    $location.path('/adminpage');
                } else {
                    $rootScope.isAdmin = false;
                    $scope.closeThisDialog(true);
                    $location.path('/movies');
                }
                $scope.user = $rootScope.isAdmin
                console.log($scope.user);
            }, function() {

            });
        };

        $scope.register = function(data) {
            AuthService.register(JSON.stringify(data)).then(function(newuser) {
                $log.info(`User registered` + JSON.stringify(newuser));
            })
        };
    })
}());