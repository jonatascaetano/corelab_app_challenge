import '../../../domain/repositories/category/get_categories_repository.dart';
import '../../datasources/category_datasource.dart';

class GetCategoriesRepositoryImp implements GetCategoriesRepository {
  final CategoryDatasource _categoryDatasource;

  GetCategoriesRepositoryImp(this._categoryDatasource);

  @override
  Future<List<String>> call() {
    return _categoryDatasource.getCategories();
  }
}
