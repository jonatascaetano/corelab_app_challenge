import '../../entities/product_entity.dart';

abstract class GetListProductsTodayRepository {
  Future<List<ProductEntity>> call();
}
