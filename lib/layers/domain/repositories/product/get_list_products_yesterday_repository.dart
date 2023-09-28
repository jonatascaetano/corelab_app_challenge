import 'package:dartz/dartz.dart';

import '../../entities/product_entity.dart';

abstract class GetListProductsYesterdayRepository {
  Future<Either<Exception, List<ProductEntity>>> call();
}
