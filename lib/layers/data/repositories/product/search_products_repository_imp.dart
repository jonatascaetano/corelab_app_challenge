import 'package:corelab_app_challenge/layers/domain/entities/product_entity.dart';

import '../../../domain/repositories/product/search_products_repository.dart';
import '../../datasources/product_datasource.dart';

class SearchProductsRepositoryImp implements SearchProductsRepository {
  final ProductDatasource _productDatasource;

  SearchProductsRepositoryImp(this._productDatasource);

  @override
  Future<List<ProductEntity>> call({required String query}) {
    return _productDatasource.searchProducts(query: query);
  }
}
