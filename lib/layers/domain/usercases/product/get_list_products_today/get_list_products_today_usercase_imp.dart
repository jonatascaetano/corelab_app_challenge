import 'package:corelab_app_challenge/layers/domain/repositories/product/get_list_products_today_repository.dart';

import '../../../entities/product_entity.dart';
import 'get_list_products_today_usercase.dart';

class GetListProductsTodayUsercaseImp implements GetListProductsTodayUsercase {
  final GetListProductsTodayRepository _getListProductsTodayRepository;

  GetListProductsTodayUsercaseImp(this._getListProductsTodayRepository);

  @override
  Future<List<ProductEntity>> call() async {
    return await _getListProductsTodayRepository();
  }
}
