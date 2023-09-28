// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import '../../domain/entities/product_entity.dart';
import '../../domain/usercases/category/get_categories/get_categories_usercase.dart';
import '../../domain/usercases/category/get_list_of_products_by_category/get_list_of_products_by_category_usercase.dart';
import '../../domain/usercases/product/get_list_products_today/get_list_products_today_usercase.dart';
import '../../domain/usercases/product/get_list_products_yesterday/get_list_products_yesterday_usercase.dart';
import '../../domain/usercases/product/get_recently_searched_products/get_recently_searched_products_usercase.dart';
import '../../domain/usercases/product/save_recently_searched_products/save_recently_searched_products_usercase.dart';
import '../../domain/usercases/product/search_products/search_products_usercase.dart';

class HomePageController extends GetxController {
  Rx<String> query = "".obs;
  RxInt current = 0.obs;
  late FocusNode focusNode;
  Rx<bool> showArrow = false.obs;
  Rx<TextEditingController> queryController = TextEditingController().obs;
  RxList<ProductEntity> resultProductsSearch = <ProductEntity>[].obs;
  RxList<String> search = <String>[].obs;

  /// Usercases

  /// //Category
  GetCategoriesUsercase getCategoriesUsercase =
      GetIt.I.get<GetCategoriesUsercase>();
  GetListOfProductsByCategoryUsercase getListOfProductsByCategoryUsercase =
      GetIt.I.get<GetListOfProductsByCategoryUsercase>();

  //Product

  GetListProductsTodayUsercase getListProductsTodayUsercase =
      GetIt.I.get<GetListProductsTodayUsercase>();
  GetListProductsYesterdayUsercase getListProductsYesterdayUsercase =
      GetIt.I.get<GetListProductsYesterdayUsercase>();
  GetRecentlySearchedProductsUsercase getRecentlySearchedProductsUsercase =
      GetIt.I.get<GetRecentlySearchedProductsUsercase>();
  SaveRecentlySearchedProductsUsercase saveRecentlySearchedProductsUsercase =
      GetIt.I.get<SaveRecentlySearchedProductsUsercase>();
  SearchProductsUsercase searchProductsUsercase =
      GetIt.I.get<SearchProductsUsercase>();

  @override
  void onInit() {
    super.onInit();
    focusNode = FocusNode();
    focusNode.addListener(() {
      showArrow.value = focusNode.hasFocus;
    });
  }

  updateQuery({required String value}) async {
    query.value = value;
    queryController.value.text = value;
    current.value = 1;
    search.value = [];
    List<String> result = await getRecentlySearchedProducts();
    if (!query.value.isBlank!) {
      result
          .where((element) =>
              element.toLowerCase().contains(query.value.toLowerCase()))
          .toList()
          .forEach((element) {
        search.add(element);
        update();
      });
    } else {
      for (var element in result) {
        search.add(element);
      }
    }
  }

  Future updateQueryWithCategory({required String value}) async {
    query.value = value;
    queryController.value.text = value;
    current.value = 1;
    await searchProducts(query: value);
  }

  updateFocus() {
    updateQuery(value: queryController.value.text);
    showArrow.value = focusNode.hasFocus;
    current.value = 1;
  }

  removeFocus() {
    focusNode.unfocus();
    showArrow.value = false;
    query.value = "";
    queryController.value.text = "";
    current.value = 0;
  }

  // ignore: slash_for_doc_comments
  /**
   * Inicio metodos que se comunicam com os usercases 
   * 
   * */

  Future<List<String>> getCategories() async {
    var result = await getCategoriesUsercase();
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }

  Future<List<ProductEntity>> getListOfProductsByCategory(
      {required String category}) async {
    var result = await getListOfProductsByCategoryUsercase(category: category);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }

  Future<List<ProductEntity>> getListProductsToday() async {
    var result = await getListProductsTodayUsercase();
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }

  Future<List<ProductEntity>> getListProductsYesterday() async {
    var result = await getListProductsYesterdayUsercase();

    return result.fold(
      (l) => [],
      (r) => r,
    );
  }

  Future<List<String>> getRecentlySearchedProducts() async {
    var result = await getRecentlySearchedProductsUsercase();
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }

  Future<void> saveRecentlySearchedProducts({required String query}) async {
    var result = await saveRecentlySearchedProductsUsercase(query: query);
    result.fold(
      (l) => null,
      (r) => r,
    );
  }

  Future<void> searchProducts({required String query}) async {
    resultProductsSearch.value = [];
    await searchProductsUsercase(query: query).then((value) {
      value.fold((l) => null, (r) => resultProductsSearch.addAll(r));
    });
    if (resultProductsSearch.isEmpty) {
      current.value = 3;
    } else {
      current.value = 2;
    }
  }

  /**Fim metodos que se comunicam com os usercases */
}
