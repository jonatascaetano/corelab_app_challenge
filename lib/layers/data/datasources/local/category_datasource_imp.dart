import 'package:corelab_app_challenge/layers/data/datasources/category_datasource.dart';
import 'package:corelab_app_challenge/layers/data/models/product_model.dart';
import 'package:corelab_app_challenge/layers/data/utils/data_local_mock.dart';
import 'package:dartz/dartz.dart';

class CategoryDatasourceImp implements CategoryDatasource {
  @override
  Future<Either<Exception, List<String>>> getCategories() async {
    try {
      await Future.delayed(
        const Duration(milliseconds: 500),
      );
      return Right(DataLocalMock.categories);
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, List<ProductModel>>> getListOfProductsByCategory(
      {required String category}) async {
    try {
      List<ProductModel> products = [];
      DataLocalMock.categoriesModel
          .where((e) => e.name.toLowerCase() == category.toLowerCase())
          .forEach((element) {
        products.addAll(element.productsModel);
      });
      await Future.delayed(const Duration(milliseconds: 500));
      return Right(products);
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
