var app = angular.module("app", []);


app.controller('EntidadCtrl', function($scope, $http) {
    $scope.idBeer = null;
    $scope.beer = null;
    $scope.beers = [];

    $scope.readEntidadBancaria = function() {
        $http.get("entidadBancaria.json.jsp").success(function(result) {
            $scope.beer=result;
        });
    };
    $scope.readEntidadBancariaByNombre = function() {
        $http.get("entidadesBancarias.json.jsp").success(function(result) {
            $scope.beers=result;
        });
    }; 
    
    $scope.borrarEntidadBancaria = function() {
        $http.get("entidadBancaria.borrar.json.jsp").success(function(result) {
            $scope.beers=result;
        });
    };
    
    
});
