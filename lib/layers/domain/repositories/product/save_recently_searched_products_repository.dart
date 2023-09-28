import 'package:dartz/dartz.dart';

abstract class SaveRecentlySearchedProductsRepository {
  Future<Either<Exception, void>> call({required String query});
}
