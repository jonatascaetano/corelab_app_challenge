import '../../entities/product_entity.dart';

abstract class SearchProductsRepository {
  Future<List<ProductEntity>> call({required String query});
}
