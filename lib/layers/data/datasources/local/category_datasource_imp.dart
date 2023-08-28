import 'package:corelab_app_challenge/layers/data/datasources/category_datasource.dart';
import 'package:corelab_app_challenge/layers/data/models/product_model.dart';
import 'package:corelab_app_challenge/layers/data/utils/data_local_mock.dart';

class CategoryDatasourceImp implements CategoryDatasource {
  @override
  Future<List<String>> getCategories() async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );
    return DataLocalMock.categories;
  }

  @override
  Future<List<ProductModel>> getListOfProductsByCategory(
      {required String category}) async {
    List<ProductModel> products = [];
    DataLocalMock.categoriesModel
        .where((e) => e.name.toLowerCase() == category.toLowerCase())
        .forEach((element) {
      products.addAll(element.productsModel);
    });
    await Future.delayed(const Duration(milliseconds: 500));
    return products;
  }
}
