import '../../entities/product_entity.dart';

abstract class GetListOfProductsByCategoryRepository {
  Future<List<ProductEntity>> call({required String category});
}
