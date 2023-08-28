import 'package:corelab_app_challenge/layers/domain/entities/product_entity.dart';

import '../../../domain/repositories/product/get_list_products_yesterday_repository.dart';
import '../../datasources/product_datasource.dart';

class GetListProductsYesterdayRepositoryImp
    implements GetListProductsYesterdayRepository {
  final ProductDatasource _productDatasource;

  GetListProductsYesterdayRepositoryImp(this._productDatasource);

  @override
  Future<List<ProductEntity>> call() {
    return _productDatasource.getListProductsYesterday();
  }
}
