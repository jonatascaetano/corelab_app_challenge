import 'package:corelab_app_challenge/layers/domain/repositories/product/get_list_products_yesterday_repository.dart';

import '../../../entities/product_entity.dart';

class GetListProductsYesterdayUsercaseImp
    implements GetListProductsYesterdayRepository {
  final GetListProductsYesterdayRepository _getListProductsYesterdayRepository;

  GetListProductsYesterdayUsercaseImp(this._getListProductsYesterdayRepository);

  @override
  Future<List<ProductEntity>> call() async {
    return await _getListProductsYesterdayRepository();
  }
}
