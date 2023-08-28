import 'package:corelab_app_challenge/layers/domain/repositories/product/save_recently_searched_products_repository.dart';

import 'save_recently_searched_products_usercase.dart';

class SaveRecentlySearchedProductsImp implements SaveRecentlySearchedProducts {
  final SaveRecentlySearchedProductsRepository
      _saveRecentlySearchedProductsRepository;

  SaveRecentlySearchedProductsImp(this._saveRecentlySearchedProductsRepository);

  @override
  Future<void> call({required String query}) async {
    await _saveRecentlySearchedProductsRepository(query: query);
  }
}
