import '../../../entities/product_entity.dart';

abstract class GetListOfProductsByCategoryUsercase {
  Future<List<ProductEntity>> call({required String category});
}
