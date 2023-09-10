import 'package:flutter/material.dart';

import '../../controllers/home_page_controller.dart';
import 'product_widget.dart';

// ignore: must_be_immutable
class ResultFound extends StatefulWidget {
  HomePageController homePageController;

  ResultFound({super.key, required this.homePageController});

  @override
  State<ResultFound> createState() => _ResultFoundState();
}

class _ResultFoundState extends State<ResultFound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              '${widget.homePageController.resultProductsSearch.length} resultados encontrados',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: "DM Sans",
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            height: 0.5,
            color: Colors.grey.shade300,
          ),
          ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => Divider(
                    height: 0.5,
                    color: Colors.grey.shade300,
                  ),
              itemCount: widget.homePageController.resultProductsSearch.length,
              itemBuilder: ((context, index) {
                return ProductWidget(
                    productEntity:
                        widget.homePageController.resultProductsSearch[index]);
              })),
        ],
      ),
    );
  }
}
