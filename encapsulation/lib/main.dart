import 'package:inheritance/product.dart';
import 'package:inheritance/products_screen.dart';

void main() {
  ProductsScreen productsScreen = ProductsScreen();

  Product product1 = Product(name: "Mackbook", price: 2222.99);
  Product product2 = Product(name: "Smartphone", price: 999.99);
  Product product3 = Product(name: "Laptop", price: 1200.99);

  productsScreen.addToCart(product1);
  productsScreen.addToCart(product2);
  productsScreen.addToCart(product3);

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
