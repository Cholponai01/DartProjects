class Product {
  String name;
  double price;

  Product({required this.name, required this.price});

  @override
  String toString() {
    return name;
  }
}
