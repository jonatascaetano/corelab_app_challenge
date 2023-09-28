import 'package:corelab_app_challenge/layers/domain/entities/product_entity.dart';
import 'package:corelab_app_challenge/layers/domain/repositories/product/search_products_repository.dart';
import 'package:dartz/dartz.dart';

import 'search_products_usercase.dart';

class SearchProductsUsercaseImp implements SearchProductsUsercase {
  final SearchProductsRepository _searchProductsRepository;

  SearchProductsUsercaseImp(this._searchProductsRepository);

  @override
  Future<Either<Exception, List<ProductEntity>>> call(
      {required String query}) async {
    return await _searchProductsRepository(query: query);
  }
}
