// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:corelab_app_challenge/layers/domain/entities/product_entity.dart';

class CategoryEntity {
  String name;
  List<ProductEntity> products;

  CategoryEntity({
    required this.name,
    required this.products,
  });
}
