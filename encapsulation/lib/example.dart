 class Product {
  String name;
  double price;

  Product(this.name, this.price);

  @override
  String toString() {
    return '$name - \$${price.toStringAsFixed(2)}';
  }
}

class OrderManager {
  List<Product> _orders = [];

  void addOrder(Product order) {
    _orders.add(order);
    print('Order added: ${order.toString()}');
  }

  void removeOrder(Product order) {
    if (_orders.contains(order)) {
      _orders.remove(order);
      print('Order removed: ${order.toString()}');
    } else {
      print('Order not found.');
    }
  }

  List<Product> getAllOrders() {
    return _orders;
  }
}

class ProductsScreen {
  List<Product> cart = [];

  void addToCart(Product product) {
    cart.add(product);
    print('Product added to the cart: ${product.toString()}');
  }

  void removeFromCart(Product product) {
    if (cart.contains(product)) {
      cart.remove(product);
      print('Product removed from the cart: ${product.toString()}');
    } else {
      print('Product not found in the cart.');
    }
  }

  void displayCart() {
    print('Shopping Cart Contents:');
    for (var product in cart) {
      print(product.toString());
    }
  }
}

void main() {
  // Пример использования классов
  Product product1 = Product('Mackbook', 999.99);
  Product product2 = Product('Smartphone', 499.99);

  OrderManager orderManager = OrderManager();
  orderManager.addOrder(product1);
  orderManager.addOrder(product2);

  orderManager.removeOrder(product1);

  ProductsScreen productsScreen = ProductsScreen();
  productsScreen.addToCart(product1);
  productsScreen.addToCart(product2);
  productsScreen.displayCart();
  productsScreen.removeFromCart(product1);
  productsScreen.displayCart();
}
