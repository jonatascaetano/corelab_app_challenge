import 'package:corelab_app_challenge/layers/domain/entities/product_entity.dart';
import 'package:corelab_app_challenge/layers/domain/repositories/category/get_list_of_products_by_category_repository.dart';

import '../../datasources/category_datasource.dart';

class GetListOfProductsByCategoryRepositoryImp
    implements GetListOfProductsByCategoryRepository {
  final CategoryDatasource _categoryDatasource;

  GetListOfProductsByCategoryRepositoryImp(this._categoryDatasource);

  @override
  Future<List<ProductEntity>> call({required String category}) {
    return _categoryDatasource.getListOfProductsByCategory(category: category);
  }
}
