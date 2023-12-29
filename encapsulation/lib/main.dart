import 'package:inheritance/product.dart';
import 'package:inheritance/products_screen.dart';

void main() {
 ProductsScreen productsScreen = ProductsScreen();

  Product product1 = Product("Laptop", 999.99);
  Product product2 = Product("Smartphone", 499.99);

  productsScreen.addToCart(product1);
  productsScreen.addToCart(product2);

  print("Current Cart:");
  for (var product in productsScreen.cart) {
    print("${product.name} - \$${product.price}");
  }

  // Checkout
  productsScreen.checkout();

  // View all orders
  print("All Orders:");
  for (var order in productsScreen.orderManager.getAllOrders()) {
    print("${order.name} - \$${order.price}");
  }
}
