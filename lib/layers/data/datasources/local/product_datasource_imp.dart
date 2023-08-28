import 'package:corelab_app_challenge/layers/data/datasources/product_datasource.dart';
import 'package:corelab_app_challenge/layers/data/models/product_model.dart';
import 'package:corelab_app_challenge/layers/data/utils/data_local_mock.dart';

class ProductDatasourceImp implements ProductDatasource {
  @override
  Future<List<ProductModel>> getListProductsToday() async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );
    return DataLocalMock.productsToday;
  }

  @override
  Future<List<ProductModel>> getListProductsYesterday() async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );
    return DataLocalMock.productsYesterday;
  }

  @override
  Future<List<String>> getRecentlySearchedProducts() async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );
    return DataLocalMock.recentlySearchedProducts;
  }

  @override
  Future<void> saveRecentlySearchedProducts({required String query}) async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );
    DataLocalMock.recentlySearchedProducts.insert(0, query);
  }

  @override
  Future<List<ProductModel>> searchProducts({required String query}) async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );
    return DataLocalMock.products
        .where((element) => element.nameModel == query)
        .toList();
  }
}
