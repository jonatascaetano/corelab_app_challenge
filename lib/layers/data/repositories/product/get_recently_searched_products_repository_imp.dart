import '../../../domain/repositories/product/get_recently_searched_products_repository.dart';
import '../../datasources/product_datasource.dart';

class GetRecentlySearchedProductsRepositoryImp
    implements GetRecentlySearchedProductsRepository {
  final ProductDatasource _productDatasource;

  GetRecentlySearchedProductsRepositoryImp(this._productDatasource);

  @override
  Future<List<String>> call() {
    return _productDatasource.getRecentlySearchedProducts();
  }
}
