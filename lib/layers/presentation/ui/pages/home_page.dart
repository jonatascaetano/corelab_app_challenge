import 'package:corelab_app_challenge/layers/presentation/controllers/home_page_controller.dart';
import 'package:corelab_app_challenge/layers/presentation/ui/widgets/last_ads_widget.dart';
import 'package:corelab_app_challenge/layers/presentation/ui/widgets/search_products_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../widgets/result_found.widget.dart';
import '../widgets/result_not_found_widget.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePageController homePageController;
  HomePage({super.key, required this.homePageController});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xff00B4CC),
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      systemStatusBarContrastEnforced: true,
    ));
    super.initState();
  }

  Widget getBody({required HomePageController homePageController}) {
    List<Widget> bodies = [
      LastAdsWidget(
        homePageController: homePageController,
      ),
      SearchProductWidget(
        homePageController: homePageController,
      ),
      ResultFound(
        homePageController: homePageController,
      ),
      ResultNotFound(
        query: homePageController.query.value,
      ),
    ];
    return bodies[homePageController.current.value];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: const Color(0xff00B4CC),
          toolbarHeight: 108 - MediaQuery.of(context).padding.top,
          actions: [
            Obx(() => widget.homePageController.showArrow.value
                ? IconButton(
                    onPressed: () {
                      widget.homePageController.removeFocus();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  )
                : Container()),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                    left: 20, top: 12, bottom: 10, right: 20),
                padding: const EdgeInsets.only(left: 10, right: 12),
                height: 44,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                child: Obx(
                  () => TextField(
                    onSubmitted: (value) {
                      widget.homePageController.saveRecentlySearchedProducts(
                          query: widget
                              .homePageController.queryController.value.text);
                      widget.homePageController.searchProducts(
                          query: widget
                              .homePageController.queryController.value.text);
                    },
                    onTap: () {
                      widget.homePageController.updateFocus();
                    },
                    onChanged: (value) {
                      widget.homePageController.updateQuery(value: value);
                    },
                    controller: widget.homePageController.queryController.value,
                    focusNode: widget.homePageController.focusNode,
                    style: const TextStyle(
                      decoration: TextDecoration.none,
                      decorationThickness: 0.0000001,
                      decorationColor: Colors.transparent,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: widget.homePageController.showArrow.value
                          ? null
                          : 'Buscar',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),
                      suffixIcon: widget.homePageController.showArrow.value
                          ? null
                          : const Icon(
                              Icons.search,
                              color: Color(0xFF00B4CC),
                            ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => widget.homePageController.query.value.isEmpty
                  ? Container()
                  : IconButton(
                      onPressed: () {},
                      icon: const Text(
                        'Filtros',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
            )
          ],
        ),
        body: Obx(
          () => getBody(
            homePageController: widget.homePageController,
          ),
        ),
      ),
    );
  }
}
