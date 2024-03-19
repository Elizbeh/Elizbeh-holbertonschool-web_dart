import 'dart:convert';
import '4-util.dart';


Future<double> calculateTotal() async{
  try {
    var userDataJson = await fetchUserData();
    var userData = json.decode(userDataJson);
    var userId = userData['id']; 
    // fetch user orders
    var userOrdersJson = await fetchUserOrders(userId);
    var userOrders = json.decode(userOrdersJson);
    double totalPrice = 0;
    for (var product in userOrders) {
      var productPriceJson = await fetchProductPrice(product);
      var productPrice = json.decode(productPriceJson);
      totalPrice += productPrice;
    }
    return totalPrice;
  } catch (error) {
    return -1; 
  }
}