import 'package:corelab_app_challenge/layers/domain/entities/product_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../domain/repositories/product/search_products_repository.dart';
import '../../datasources/product_datasource.dart';

class SearchProductsRepositoryImp implements SearchProductsRepository {
  final ProductDatasource _productDatasource;

  SearchProductsRepositoryImp(this._productDatasource);

  @override
  Future<Either<Exception, List<ProductEntity>>> call(
      {required String query}) async {
    return await _productDatasource.searchProducts(query: query);
  }
}
