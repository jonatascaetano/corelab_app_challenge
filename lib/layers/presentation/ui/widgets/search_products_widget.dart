import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/utils/data_local_mock.dart';
import '../../controllers/home_page_controller.dart';

class SearchProductWidget extends StatefulWidget {
  const SearchProductWidget({super.key});

  @override
  State<SearchProductWidget> createState() => _SearchProductWidgetState();
}

class _SearchProductWidgetState extends State<SearchProductWidget> {
  late HomePageController homePageController;

  @override
  void initState() {
    homePageController = Get.find<HomePageController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
          child: Text(
            'Pesquisas recentes',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: "DM Sans",
            ),
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: DataLocalMock.recentlySearchedProducts.length,
            itemBuilder: ((context, index) {
              return Padding(
                  padding: EdgeInsets.zero,
                  //const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: ListTile(
                    leading: const Icon(
                      Icons.history_outlined,
                      color: Colors.grey,
                    ),
                    title: Text(
                      DataLocalMock.recentlySearchedProducts[index],
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ));
            })),
      ],
    );
  }
}
