import 'package:dartz/dartz.dart';

import '../../../domain/repositories/category/get_categories_repository.dart';
import '../../datasources/category_datasource.dart';

class GetCategoriesRepositoryImp implements GetCategoriesRepository {
  final CategoryDatasource _categoryDatasource;

  GetCategoriesRepositoryImp(this._categoryDatasource);

  @override
  Future<Either<Exception, List<String>>> call() async {
    return await _categoryDatasource.getCategories();
  }
}
