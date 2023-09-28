// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../domain/entities/category_entity.dart';
import 'product_model.dart';

class CategoryModel extends CategoryEntity {
  String nameModel;
  List<ProductModel> productsModel;
  CategoryModel({
    required this.nameModel,
    required this.productsModel,
  }) : super(name: nameModel, products: productsModel);

  CategoryModel copyWith({
    String? nameModel,
    List<ProductModel>? productsModel,
  }) {
    return CategoryModel(
      nameModel: nameModel ?? this.nameModel,
      productsModel: productsModel ?? this.productsModel,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameModel': nameModel,
      'productsModel': productsModel.map((x) => x.toMap()).toList(),
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      nameModel: map['nameModel'] as String,
      productsModel: List<ProductModel>.from(
        (map['productsModel'] as List<int>).map<ProductModel>(
          (x) => ProductModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'CategoryModel(nameModel: $nameModel, productsModel: $productsModel)';

  @override
  bool operator ==(covariant CategoryModel other) {
    if (identical(this, other)) return true;

    return other.nameModel == nameModel &&
        listEquals(other.productsModel, productsModel);
  }

  @override
  int get hashCode => nameModel.hashCode ^ productsModel.hashCode;
}
