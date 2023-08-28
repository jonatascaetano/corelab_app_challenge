import '../../entities/product_entity.dart';

abstract class GetListProductsYesterdayRepository {
  Future<List<ProductEntity>> call();
}
