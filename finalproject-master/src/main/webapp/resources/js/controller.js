var cartApp = angular.module ("cartApp", []);

cartApp.controller("cartCtrl", function($scope, $http){

    $scope.refreshCart = function(){
    	 console.log("in referesh cart");
       $http.get('http://localhost:8080/furniturehub/rest/cart/' + $scope.cartId).success(function (data){
           $scope.cart = data;
          
       });
    };

    $scope.clearCart = function(){
//    	console.log("before clearing the cart");
//        $http.delete('http://localhost:8080/furniturehub/rest/cart/' + $scope.cartId).success($scope.refreshCart());   
//        alert("your cart is emptly");
//        $scope.refreshCart();
        
        $http.delete('http://localhost:8080/furniturehub/rest/cart/' + $scope.cartId).
        then(function (response) {
        	 alert('cart items are cleared!');
        	 $scope.refreshCart();
        	}, function (response) {
        		 alert('your cart is already empty!');
        	});
    };

    $scope.initCartId = function(cartId){
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function(productId){
//        $http.put('http://localhost:8080/furniturehub/rest/cart/add/' + productId).success(function (){
//            alert('Product successfully added to the cart!');
//        });
        
        
        $http.put('http://localhost:8080/furniturehub/rest/cart/add/' + productId).
        then(function (response) {
        	 alert('Product successfully added to the cart!');
        	}, function (response) {
        		 alert('some problem!');
        	});
    };

    $scope.removeFromCart = function(productId){
        $http.put('http://localhost:8080/furniturehub/rest/cart/remove/' + productId).success(function(data){
           $scope.refreshCart();
        });
    };

    $scope.calGrandTotal = function(){
        var grandTotal = 0;
        for (var i = 0; i < $scope.cart.cartItems.length; i++){
            grandTotal += $scope.cart.cartItems[i].totalPrice;
        }
        return grandTotal;
    }
});