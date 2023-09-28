import 'package:corelab_app_challenge/layers/data/models/product_model.dart';
import 'package:dartz/dartz.dart';

abstract class ProductDatasource {
  Future<Either<Exception, List<ProductModel>>> getListProductsToday();
  Future<Either<Exception, List<ProductModel>>> getListProductsYesterday();
  Future<Either<Exception, List<String>>> getRecentlySearchedProducts();
  Future<Either<Exception, void>> saveRecentlySearchedProducts(
      {required String query});
  Future<Either<Exception, List<ProductModel>>> searchProducts(
      {required String query});
}
