import 'package:inheritance/product.dart';

class OrderManager{
   List<Product> _orders = [];

  void addOrder(Product order) {
    _orders.add(order);
  }

  void removeOrder(Product order) {
    _orders.remove(order);
  }

  List<Product> getAllOrders() {
    return List.from(_orders);
  }
}