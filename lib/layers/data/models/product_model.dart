// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:corelab_app_challenge/layers/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  String nameModel;
  String imageUrlModel;
  double priceModel;
  int discountModel;
  ProductModel({
    required this.nameModel,
    required this.imageUrlModel,
    required this.priceModel,
    required this.discountModel,
  }) : super(
            name: nameModel,
            imageUrl: imageUrlModel,
            price: priceModel,
            discount: discountModel);

  ProductModel copyWith({
    String? nameModel,
    String? imageUrlModel,
    double? priceModel,
    int? discountModel,
  }) {
    return ProductModel(
      nameModel: nameModel ?? this.nameModel,
      imageUrlModel: imageUrlModel ?? this.imageUrlModel,
      priceModel: priceModel ?? this.priceModel,
      discountModel: discountModel ?? this.discountModel,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameModel': nameModel,
      'imageUrlModel': imageUrlModel,
      'priceModel': priceModel,
      'discountModel': discountModel,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      nameModel: map['nameModel'] as String,
      imageUrlModel: map['imageUrlModel'] as String,
      priceModel: map['priceModel'] as double,
      discountModel: map['discountModel'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(nameModel: $nameModel, imageUrlModel: $imageUrlModel, priceModel: $priceModel, discountModel: $discountModel)';
  }

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;

    return other.nameModel == nameModel &&
        other.imageUrlModel == imageUrlModel &&
        other.priceModel == priceModel &&
        other.discountModel == discountModel;
  }

  @override
  int get hashCode {
    return nameModel.hashCode ^
        imageUrlModel.hashCode ^
        priceModel.hashCode ^
        discountModel.hashCode;
  }
}
