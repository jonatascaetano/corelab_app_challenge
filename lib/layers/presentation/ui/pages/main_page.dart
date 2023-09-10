import 'package:corelab_app_challenge/layers/presentation/ui/pages/categories_page.dart';
import 'package:corelab_app_challenge/layers/presentation/ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_page_controller.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int current = 0;
  late PageController _pageController;
  late HomePageController homePageController =
      Get.put<HomePageController>(HomePageController());

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    );
    _pageController.addListener(() {
      setState(() {
        current = _pageController.page?.toInt() ?? 0;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: [
            HomePage(homePageController: homePageController),
            CategoriesPage(
                pageController: _pageController,
                homePageController: homePageController),
            Container(),
            Container(),
            Container(),
            Container(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: current,
            onTap: (index) {
              _pageController.jumpToPage(index);
              homePageController.removeFocus();
            },
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.cyan,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: current == 0
                    ? Image.asset(
                        "assets/icons/home_on.png",
                        scale: 2.5,
                      )
                    : Image.asset(
                        "assets/icons/home.png",
                        scale: 2.5,
                      ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: current == 1
                    ? Image.asset(
                        "assets/icons/category_on.png",
                        scale: 2.5,
                      )
                    : Image.asset(
                        "assets/icons/category.png",
                        scale: 2.5,
                      ),
                label: 'Categorias',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/add.png",
                  scale: 2.5,
                ),
                label: 'Anunciar',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/favorite.png",
                  scale: 2.5,
                ),
                label: 'Favoritos',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/user.png",
                  scale: 2.5,
                ),
                label: 'Conta',
              ),
            ]),
      ),
    );
  }
}
