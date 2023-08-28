import '../../../entities/product_entity.dart';

abstract class SearchProductsUsercase {
  Future<List<ProductEntity>> call();
}
