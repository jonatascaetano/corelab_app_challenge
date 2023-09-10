import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../data/utils/data_local_mock.dart';
import '../../controllers/home_page_controller.dart';

// ignore: must_be_immutable
class CategoriesPage extends StatefulWidget {
  PageController pageController;
  HomePageController homePageController;
  CategoriesPage(
      {super.key,
      required this.pageController,
      required this.homePageController});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 238, 242, 243),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemStatusBarContrastEnforced: false,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 108 - MediaQuery.of(context).padding.top,
          backgroundColor: Colors.grey.shade100,
          elevation: 0.2,
          title: const Text(
            'Categorias',
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: FutureBuilder(
          future: widget.homePageController.getCategories(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return SizedBox(
                  height: 400.0,
                  width: MediaQuery.of(context).size.width,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              case ConnectionState.active:
              case ConnectionState.done:
                if (snapshot.hasData) {
                  return ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey.shade300,
                            ),
                          ),
                      itemCount: DataLocalMock.categories.length,
                      itemBuilder: ((context, index) {
                        return GestureDetector(
                          onTap: () async {
                            await widget.homePageController
                                .updateQueryWithCategory(
                                    value: snapshot.data![index]);
                            widget.pageController.jumpToPage(0);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 8.0),
                            child: Text(
                              snapshot.data![index],
                              style: const TextStyle(
                                color: Colors.cyan,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        );
                      }));
                } else {
                  return Container();
                }
            }
          },
        ),
      ),
    );
  }
}
