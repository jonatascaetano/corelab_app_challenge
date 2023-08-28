import '../../../repositories/product/get_recently_searched_products_repository.dart';
import 'get_recently_searched_products_usercase.dart';

class GetRecentlySearchedProductsUsercaseImp
    implements GetRecentlySearchedProductsUsercase {
  final GetRecentlySearchedProductsRepository
      _getRecentlySearchedProductsRepository;

  GetRecentlySearchedProductsUsercaseImp(
      this._getRecentlySearchedProductsRepository);

  @override
  Future<List<String>> call() async {
    return await _getRecentlySearchedProductsRepository();
  }
}
