import 'package:corelab_app_challenge/layers/data/datasources/category_datasource.dart';
import 'package:corelab_app_challenge/layers/data/datasources/local/category_datasource_imp.dart';
import 'package:corelab_app_challenge/layers/data/datasources/local/product_datasource_imp.dart';
import 'package:corelab_app_challenge/layers/data/datasources/product_datasource.dart';
import 'package:corelab_app_challenge/layers/data/repositories/category/get_categories_repository_imp.dart';
import 'package:corelab_app_challenge/layers/data/repositories/category/get_list_of_products_by_category_repository_imp.dart';
import 'package:corelab_app_challenge/layers/data/repositories/product/get_list_products_today_repository_imp.dart';
import 'package:corelab_app_challenge/layers/data/repositories/product/get_list_products_yesterday_repository_imp.dart';
import 'package:corelab_app_challenge/layers/data/repositories/product/get_recently_searched_products_repository_imp.dart';
import 'package:corelab_app_challenge/layers/data/repositories/product/save_recently_searched_products_repository_imp.dart';
import 'package:corelab_app_challenge/layers/data/repositories/product/search_products_repository_imp.dart';
import 'package:corelab_app_challenge/layers/domain/repositories/category/get_categories_repository.dart';
import 'package:corelab_app_challenge/layers/domain/repositories/category/get_list_of_products_by_category_repository.dart';
import 'package:corelab_app_challenge/layers/domain/repositories/product/get_list_products_today_repository.dart';
import 'package:corelab_app_challenge/layers/domain/repositories/product/get_list_products_yesterday_repository.dart';
import 'package:corelab_app_challenge/layers/domain/repositories/product/get_recently_searched_products_repository.dart';
import 'package:corelab_app_challenge/layers/domain/repositories/product/save_recently_searched_products_repository.dart';
import 'package:corelab_app_challenge/layers/domain/repositories/product/search_products_repository.dart';
import 'package:corelab_app_challenge/layers/domain/usercases/category/get_categories/get_categories_usercase.dart';
import 'package:corelab_app_challenge/layers/domain/usercases/category/get_categories/get_categories_usercase_imp.dart';
import 'package:corelab_app_challenge/layers/domain/usercases/category/get_list_of_products_by_category/get_list_of_products_by_category_usercase.dart';
import 'package:corelab_app_challenge/layers/domain/usercases/category/get_list_of_products_by_category/get_list_of_products_by_category_usercase_imp.dart';
import 'package:corelab_app_challenge/layers/domain/usercases/product/get_list_products_today/get_list_products_today_usercase.dart';
import 'package:corelab_app_challenge/layers/domain/usercases/product/get_list_products_today/get_list_products_today_usercase_imp.dart';
import 'package:corelab_app_challenge/layers/domain/usercases/product/get_list_products_yesterday/get_list_products_yesterday_usercase.dart';
import 'package:corelab_app_challenge/layers/domain/usercases/product/get_list_products_yesterday/get_list_products_yesterday_usercase_imp.dart';
import 'package:corelab_app_challenge/layers/domain/usercases/product/get_recently_searched_products/get_recently_searched_products_usercase.dart';
import 'package:corelab_app_challenge/layers/domain/usercases/product/get_recently_searched_products/get_recently_searched_products_usercase_imp.dart';
import 'package:corelab_app_challenge/layers/domain/usercases/product/save_recently_searched_products/save_recently_searched_products_usercase.dart';
import 'package:corelab_app_challenge/layers/domain/usercases/product/save_recently_searched_products/save_recently_searched_products_usercase_imp.dart';
import 'package:corelab_app_challenge/layers/domain/usercases/product/search_products/search_products_usercase.dart';
import 'package:corelab_app_challenge/layers/domain/usercases/product/search_products/search_products_usercase_imp.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;
    //Datasources
    getIt.registerLazySingleton<CategoryDatasource>(
      () => CategoryDatasourceImp(),
    );
    getIt.registerLazySingleton<ProductDatasource>(
      () => ProductDatasourceImp(),
    );

    //Repositories
    /**
     * Category
     */
    getIt.registerLazySingleton<GetCategoriesRepository>(
      () => GetCategoriesRepositoryImp(getIt()),
    );
    getIt.registerLazySingleton<GetListOfProductsByCategoryRepository>(
      () => GetListOfProductsByCategoryRepositoryImp(getIt()),
    );
    /**
     * Product
     */
    getIt.registerLazySingleton<GetListProductsTodayRepository>(
      () => GetListProductsTodayRepositoryImp(getIt()),
    );
    getIt.registerLazySingleton<GetListProductsYesterdayRepository>(
      () => GetListProductsYesterdayRepositoryImp(getIt()),
    );
    getIt.registerLazySingleton<GetRecentlySearchedProductsRepository>(
      () => GetRecentlySearchedProductsRepositoryImp(getIt()),
    );
    getIt.registerLazySingleton<SaveRecentlySearchedProductsRepository>(
      () => SaveRecentlySearchedProductsRepositoryImp(getIt()),
    );
    getIt.registerLazySingleton<SearchProductsRepository>(
      () => SearchProductsRepositoryImp(getIt()),
    );
    //Usercases

    /**
     * Category
     */
    getIt.registerLazySingleton<GetCategoriesUsercase>(
      () => GetCategoriesUsercaseImp(getIt()),
    );
    getIt.registerLazySingleton<GetListOfProductsByCategoryUsercase>(
      () => GetListOfProductsByCategoryUsercaseImp(getIt()),
    );

    /**
     * Product
     */
    getIt.registerLazySingleton<GetListProductsTodayUsercase>(
      () => GetListProductsTodayUsercaseImp(getIt()),
    );
    getIt.registerLazySingleton<GetListProductsYesterdayUsercase>(
      () => GetListProductsYesterdayUsercaseImp(getIt()),
    );
    getIt.registerLazySingleton<GetRecentlySearchedProductsUsercase>(
      () => GetRecentlySearchedProductsUsercaseImp(getIt()),
    );
    getIt.registerLazySingleton<SaveRecentlySearchedProductsUsercase>(
      () => SaveRecentlySearchedProductsUsercaseImp(getIt()),
    );
    getIt.registerLazySingleton<SearchProductsUsercase>(
      () => SearchProductsUsercaseImp(getIt()),
    );
  }
}
