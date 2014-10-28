function indexCTRL($scope) {

  $scope.value = '0';
  $scope.display = '';
  $scope.clearValueIfNumkey = false;
  $scope.clearDisplayIfNumkey = false;

  var evaluate = function(){
    return eval($scope.value).toString();
  }
 
  
  $scope.press = function(key) {
    if ("0123456789".indexOf(key) >= 0) {
        if ($scope.clearDisplayIfNumkey == true){
          $scope.display ='';
        }
        if ($scope.clearValueIfNumkey == true){
          $scope.value = '0';
        }
        $scope.display += key;
        $scope.value += key;
}

  $scope.clearDisplayIfNumkey = false;
  $scope.clearValueIfNumkey = false;

    if ("+-/*".indexOf(key) >= 0){
      $scope.value = evaluate() + key;
      $scope.clearDisplayIfNumkey = true;
    }

    if (key == '=') {
      $scope.value = evaluate();
      $scope.display = $scope.value;
      $scope.clearDisplayIfNumkey = true;
      $scope.clearValueIfNumkey = true;
    }

    if (key == 'C') {
      $scope.display = ''
    }
  }
}  