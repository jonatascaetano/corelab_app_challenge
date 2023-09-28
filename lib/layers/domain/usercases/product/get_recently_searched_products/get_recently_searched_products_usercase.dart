import 'package:dartz/dartz.dart';

abstract class GetRecentlySearchedProductsUsercase {
  Future<Either<Exception, List<String>>> call();
}
