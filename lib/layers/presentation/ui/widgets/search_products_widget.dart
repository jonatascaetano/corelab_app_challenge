// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_page_controller.dart';

// ignore: must_be_immutable
class SearchProductWidget extends StatefulWidget {
  HomePageController homePageController;
  SearchProductWidget({
    Key? key,
    required this.homePageController,
  }) : super(key: key);

  @override
  State<SearchProductWidget> createState() => _SearchProductWidgetState();
}

class _SearchProductWidgetState extends State<SearchProductWidget> {
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
        Obx(
          () => ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.homePageController.search.length,
            itemBuilder: ((context, index) {
              return Padding(
                  padding: EdgeInsets.zero,
                  child: ListTile(
                    leading: const Icon(
                      Icons.history_outlined,
                      color: Colors.grey,
                    ),
                    title: GestureDetector(
                      onTap: () {
                        widget.homePageController.updateQueryWithCategory(
                            value: widget.homePageController.search[index]);
                      },
                      child: Text(
                        widget.homePageController.search[index],
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ));
            }),
          ),
        ),
      ],
    );
  }
}
