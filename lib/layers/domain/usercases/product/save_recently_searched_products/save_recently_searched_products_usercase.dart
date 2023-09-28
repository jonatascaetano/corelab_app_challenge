import 'package:dartz/dartz.dart';

abstract class SaveRecentlySearchedProductsUsercase {
  Future<Either<Exception, void>> call({required String query});
}
