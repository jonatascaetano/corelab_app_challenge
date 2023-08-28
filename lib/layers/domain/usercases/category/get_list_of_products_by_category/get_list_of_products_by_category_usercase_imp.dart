import 'package:corelab_app_challenge/layers/domain/entities/product_entity.dart';
import 'package:corelab_app_challenge/layers/domain/repositories/category/get_list_of_products_by_category_repository.dart';
import 'package:corelab_app_challenge/layers/domain/usercases/category/get_list_of_products_by_category/get_list_of_products_by_category_usercase.dart';

class GetListOfProductsByCategoryUsercaseImp
    implements GetListOfProductsByCategoryUsercase {
  final GetListOfProductsByCategoryRepository
      _getListOfProductsByCategoryRepository;

  GetListOfProductsByCategoryUsercaseImp(
      this._getListOfProductsByCategoryRepository);

  @override
  Future<List<ProductEntity>> call({required String category}) async {
    return await _getListOfProductsByCategoryRepository(category: category);
  }
}
