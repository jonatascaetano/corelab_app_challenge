import 'package:corelab_app_challenge/layers/data/models/product_model.dart';

abstract class CategoryDatasource {
  Future<List<String>> getCategories();
  Future<List<ProductModel>> getListOfProductsByCategory(
      {required String category});
}
