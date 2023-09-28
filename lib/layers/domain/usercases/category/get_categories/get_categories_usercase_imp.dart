import 'package:corelab_app_challenge/layers/domain/repositories/category/get_categories_repository.dart';
import 'package:corelab_app_challenge/layers/domain/usercases/category/get_categories/get_categories_usercase.dart';
import 'package:dartz/dartz.dart';

class GetCategoriesUsercaseImp implements GetCategoriesUsercase {
  final GetCategoriesRepository _getCategoriesRepository;

  GetCategoriesUsercaseImp(this._getCategoriesRepository);

  @override
  Future<Either<Exception, List<String>>> call() async {
    return await _getCategoriesRepository();
  }
}
