import 'package:dartz/dartz.dart';

import '../../entities/product_entity.dart';

abstract class GetListOfProductsByCategoryRepository {
  Future<Either<Exception, List<ProductEntity>>> call(
      {required String category});
}
