import 'package:corelab_app_challenge/layers/presentation/ui/pages/categories_page.dart';
import 'package:corelab_app_challenge/layers/presentation/ui/pages/home_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const HomePage(),
      const CategoriesPage(),
      Container(),
      Container(),
      Container(),
    ];
    return SafeArea(
        child: Scaffold(
      body: pages[current],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: current,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.cyan,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              current = value;
            });
          },
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
    ));
  }
}
