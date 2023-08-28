import '../../../domain/repositories/product/save_recently_searched_products_repository.dart';
import '../../datasources/product_datasource.dart';

class SaveRecentlySearchedProductsRepositoryImp
    implements SaveRecentlySearchedProductsRepository {
  final ProductDatasource _productDatasource;

  SaveRecentlySearchedProductsRepositoryImp(this._productDatasource);

  @override
  Future<void> call({required String query}) {
    return _productDatasource.saveRecentlySearchedProducts(query: query);
  }
}
