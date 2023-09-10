// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:corelab_app_challenge/layers/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  String nameModel;
  String imageUrlModel;
  double priceModel;
  int discountModel;
  String categoryModel;

  ProductModel({
    required this.nameModel,
    required this.imageUrlModel,
    required this.priceModel,
    required this.discountModel,
    required this.categoryModel,
  }) : super(
          name: nameModel,
          imageUrl: imageUrlModel,
          price: priceModel,
          discount: discountModel,
          category: categoryModel,
        );

  ProductModel copyWith({
    String? nameModel,
    String? imageUrlModel,
    double? priceModel,
    int? discountModel,
    String? categoryModel,
  }) {
    return ProductModel(
      nameModel: nameModel ?? this.nameModel,
      imageUrlModel: imageUrlModel ?? this.imageUrlModel,
      priceModel: priceModel ?? this.priceModel,
      discountModel: discountModel ?? this.discountModel,
      categoryModel: categoryModel ?? this.categoryModel,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameModel': nameModel,
      'imageUrlModel': imageUrlModel,
      'priceModel': priceModel,
      'discountModel': discountModel,
      'categoryModel': categoryModel,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      nameModel: map['nameModel'] as String,
      imageUrlModel: map['imageUrlModel'] as String,
      priceModel: map['priceModel'] as double,
      discountModel: map['discountModel'] as int,
      categoryModel: map['categoryModel'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(nameModel: $nameModel, imageUrlModel: $imageUrlModel, priceModel: $priceModel, discountModel: $discountModel, categoryModel: $categoryModel)';
  }

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;

    return other.nameModel == nameModel &&
        other.imageUrlModel == imageUrlModel &&
        other.priceModel == priceModel &&
        other.discountModel == discountModel &&
        other.categoryModel == categoryModel;
  }

  @override
  int get hashCode {
    return nameModel.hashCode ^
        imageUrlModel.hashCode ^
        priceModel.hashCode ^
        discountModel.hashCode ^
        categoryModel.hashCode;
  }
}
