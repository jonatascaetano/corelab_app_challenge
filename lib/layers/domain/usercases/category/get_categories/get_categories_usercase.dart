import 'package:dartz/dartz.dart';

abstract class GetCategoriesUsercase {
  Future<Either<Exception, List<String>>> call();
}
