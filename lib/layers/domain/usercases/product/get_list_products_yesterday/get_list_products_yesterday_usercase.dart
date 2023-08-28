import '../../../entities/product_entity.dart';

abstract class GetListProductsYesterdayUsercase {
  Future<List<ProductEntity>> call();
}
