import 'package:dartz/dartz.dart';

abstract class GetRecentlySearchedProductsRepository {
  Future<Either<Exception, List<String>>> call();
}
