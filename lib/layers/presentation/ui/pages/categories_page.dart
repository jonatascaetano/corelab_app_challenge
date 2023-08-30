import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../data/utils/data_local_mock.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemStatusBarContrastEnforced: true,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 108 - MediaQuery.of(context).padding.top,
        title: const Text(
          'Categorias',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) => Divider(
                height: 0.5,
                color: Colors.grey.shade300,
              ),
          itemCount: DataLocalMock.categories.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                DataLocalMock.categories[index],
                style: const TextStyle(
                  color: Colors.cyan,
                  fontSize: 20,
                ),
              ),
            );
          })),
    );
  }
}
