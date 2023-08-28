import 'package:corelab_app_challenge/layers/domain/repositories/category/get_categories_repository.dart';
import 'package:corelab_app_challenge/layers/domain/usercases/category/get_categories/get_categories_usercase.dart';

class GetCategoriesUsercaseImp implements GetCategoriesUsercase {
  final GetCategoriesRepository _getCategoriesRepository;

  GetCategoriesUsercaseImp(this._getCategoriesRepository);

  @override
  Future<List<String>> call() async {
    return await _getCategoriesRepository();
  }
}
