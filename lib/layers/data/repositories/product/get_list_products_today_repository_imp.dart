import 'package:corelab_app_challenge/layers/data/datasources/product_datasource.dart';
import 'package:corelab_app_challenge/layers/domain/entities/product_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../domain/repositories/product/get_list_products_today_repository.dart';

class GetListProductsTodayRepositoryImp
    implements GetListProductsTodayRepository {
  final ProductDatasource _productDatasource;

  GetListProductsTodayRepositoryImp(this._productDatasource);

  @override
  Future<Either<Exception, List<ProductEntity>>> call() async {
    return await _productDatasource.getListProductsToday();
  }
}
