// ignore_for_file: public_member_api_docs, sort_constructors_first

class ProductEntity {
  String name;
  String imageUrl;
  double price;
  int discount;
  String category;

  ProductEntity({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.discount,
    required this.category,
  });
}
