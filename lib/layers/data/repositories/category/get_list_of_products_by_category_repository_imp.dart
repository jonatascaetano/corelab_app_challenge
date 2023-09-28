import 'package:corelab_app_challenge/layers/domain/entities/product_entity.dart';
import 'package:corelab_app_challenge/layers/domain/repositories/category/get_list_of_products_by_category_repository.dart';
import 'package:dartz/dartz.dart';

import '../../datasources/category_datasource.dart';

class GetListOfProductsByCategoryRepositoryImp
    implements GetListOfProductsByCategoryRepository {
  final CategoryDatasource _categoryDatasource;

  GetListOfProductsByCategoryRepositoryImp(this._categoryDatasource);

  @override
  Future<Either<Exception, List<ProductEntity>>> call(
      {required String category}) async {
    return await _categoryDatasource.getListOfProductsByCategory(
        category: category);
  }
}
