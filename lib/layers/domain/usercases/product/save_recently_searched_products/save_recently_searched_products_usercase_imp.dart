import 'package:corelab_app_challenge/layers/domain/repositories/product/save_recently_searched_products_repository.dart';

import 'save_recently_searched_products_usercase.dart';

class SaveRecentlySearchedProductsUsercaseImp
    implements SaveRecentlySearchedProductsUsercase {
  final SaveRecentlySearchedProductsRepository
      _saveRecentlySearchedProductsRepository;

  SaveRecentlySearchedProductsUsercaseImp(
      this._saveRecentlySearchedProductsRepository);

  @override
  Future<void> call({required String query}) async {
    await _saveRecentlySearchedProductsRepository(query: query);
  }
}
