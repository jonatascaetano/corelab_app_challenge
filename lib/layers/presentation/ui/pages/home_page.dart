import 'package:corelab_app_challenge/layers/presentation/controllers/home_page_controller.dart';
import 'package:corelab_app_challenge/layers/presentation/ui/widgets/last_ads_widget.dart';
import 'package:corelab_app_challenge/layers/presentation/ui/widgets/search_products_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomePageController homePageController;

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xff00B4CC),
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      systemStatusBarContrastEnforced: true,
    ));
    homePageController = Get.put<HomePageController>(HomePageController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: const Color(0xff00B4CC),
          toolbarHeight: 108 - MediaQuery.of(context).padding.top,
          actions: [
            Obx(() {
              final shouldShowArrow = homePageController.showArrow.value;
              return shouldShowArrow
                  ? IconButton(
                      onPressed: () {
                        homePageController.removeFocus();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    )
                  : Container();
            }),
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
                    onSubmitted: (value) {},
                    onChanged: (value) {
                      homePageController.updateQuery(value: value);
                    },
                    controller: homePageController.queryController.value,
                    focusNode: homePageController.focusNode,
                    style: const TextStyle(
                      decoration: TextDecoration.none,
                      decorationThickness: 0.0000001,
                      decorationColor: Colors.transparent,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText:
                          homePageController.showArrow.value ? null : 'Buscar',
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      suffixIcon: homePageController.showArrow.value
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
              () => homePageController.query.value.isEmpty
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
          () => homePageController.page.value
              ? const SearchProductWidget()
              : const LastAdsWidget(),
        ));
  }
}
