import 'package:inheritance/product.dart';

class OrderManager {
  final List<Product> _orders = [];
  List<Product> get orders => _orders;

  void addOrder(Product order) {
    _orders.add(order);
  }

  void removeOrder(Product order) {
    if (_orders.contains(order)) {
      _orders.remove(order);
    }
  }

  List<Product> getAllOrders() {
    return List.from(_orders);
  }
}
