import 'package:corelab_app_challenge/layers/data/models/product_model.dart';

abstract class ProductDatasource {
  Future<List<ProductModel>> getListProductsToday();
  Future<List<ProductModel>> getListProductsYesterday();
  Future<List<String>> getRecentlySearchedProducts();
  Future<void> saveRecentlySearchedProducts({required String query});
  Future<List<ProductModel>> searchProducts({required String query});
}
