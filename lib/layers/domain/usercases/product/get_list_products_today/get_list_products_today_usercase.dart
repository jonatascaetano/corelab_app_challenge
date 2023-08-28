import '../../../entities/product_entity.dart';

abstract class GetListProductsTodayUsercase {
  Future<List<ProductEntity>> call();
}
