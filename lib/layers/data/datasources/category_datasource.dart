import 'package:corelab_app_challenge/layers/data/models/product_model.dart';
import 'package:dartz/dartz.dart';

abstract class CategoryDatasource {
  Future<Either<Exception, List<String>>> getCategories();
  Future<Either<Exception, List<ProductModel>>> getListOfProductsByCategory(
      {required String category});
}
