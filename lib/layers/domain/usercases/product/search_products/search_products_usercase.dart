import 'package:dartz/dartz.dart';

import '../../../entities/product_entity.dart';

abstract class SearchProductsUsercase {
  Future<Either<Exception, List<ProductEntity>>> call({required String query});
}
