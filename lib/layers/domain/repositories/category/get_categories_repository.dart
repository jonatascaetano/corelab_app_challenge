import 'package:dartz/dartz.dart';

abstract class GetCategoriesRepository {
  Future<Either<Exception, List<String>>> call();
}
