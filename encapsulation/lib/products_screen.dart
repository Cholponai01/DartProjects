import 'package:inheritance/order_manager.dart';
import 'package:inheritance/product.dart';

class ProductsScreen{
   List<Product> cart = [];
  OrderManager orderManager = OrderManager();

  void addToCart(Product product) {
    cart.add(product);
  }

  void removeFromCart(Product product) {
    cart.remove(product);
  }

  void checkout() {
    for (var product in cart) {
      orderManager.addOrder(product);
    }
    cart.clear();
    print("Checkout successful!");
  }
}