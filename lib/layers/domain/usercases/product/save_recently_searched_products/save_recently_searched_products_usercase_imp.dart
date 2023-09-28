import 'package:corelab_app_challenge/layers/domain/repositories/product/save_recently_searched_products_repository.dart';
import 'package:dartz/dartz.dart';

import 'save_recently_searched_products_usercase.dart';

class SaveRecentlySearchedProductsUsercaseImp
    implements SaveRecentlySearchedProductsUsercase {
  final SaveRecentlySearchedProductsRepository
      _saveRecentlySearchedProductsRepository;

  SaveRecentlySearchedProductsUsercaseImp(
      this._saveRecentlySearchedProductsRepository);

  @override
  Future<Either<Exception, void>> call({required String query}) {
    return _saveRecentlySearchedProductsRepository(query: query);
  }
}
