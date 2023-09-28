import 'package:corelab_app_challenge/layers/data/datasources/product_datasource.dart';
import 'package:corelab_app_challenge/layers/data/models/product_model.dart';
import 'package:corelab_app_challenge/layers/data/utils/data_local_mock.dart';
import 'package:dartz/dartz.dart';

class ProductDatasourceImp implements ProductDatasource {
  @override
  Future<Either<Exception, List<ProductModel>>> getListProductsToday() async {
    try {
      await Future.delayed(
        const Duration(milliseconds: 500),
      );
      return Right(DataLocalMock.productsToday);
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, List<ProductModel>>>
      getListProductsYesterday() async {
    try {
      await Future.delayed(
        const Duration(milliseconds: 500),
      );
      return Right(DataLocalMock.productsYesterday);
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, List<String>>> getRecentlySearchedProducts() async {
    try {
      await Future.delayed(
        const Duration(milliseconds: 500),
      );
      return Right(DataLocalMock.recentlySearchedProducts);
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, void>> saveRecentlySearchedProducts(
      {required String query}) async {
    try {
      await Future.delayed(
        const Duration(milliseconds: 500),
      );
      return Right(DataLocalMock.recentlySearchedProducts.insert(0, query));
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, List<ProductModel>>> searchProducts(
      {required String query}) async {
    try {
      await Future.delayed(
        const Duration(milliseconds: 500),
      );
      return Right(DataLocalMock.products
          .where(
            (element) =>
                element.nameModel.toLowerCase().contains(query.toLowerCase()) ||
                element.category.toLowerCase().contains(query.toLowerCase()) ||
                element.price
                    .toStringAsFixed(2)
                    .contains(query.replaceAll(",", ".")),
          )
          .toList());
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
