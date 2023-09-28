import 'package:dartz/dartz.dart';

import '../../../domain/repositories/product/get_recently_searched_products_repository.dart';
import '../../datasources/product_datasource.dart';

class GetRecentlySearchedProductsRepositoryImp
    implements GetRecentlySearchedProductsRepository {
  final ProductDatasource _productDatasource;

  GetRecentlySearchedProductsRepositoryImp(this._productDatasource);

  @override
  Future<Either<Exception, List<String>>> call() async {
    return await _productDatasource.getRecentlySearchedProducts();
  }
}
