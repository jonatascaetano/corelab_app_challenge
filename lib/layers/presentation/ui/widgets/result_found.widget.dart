import 'package:flutter/material.dart';

import '../../../data/utils/data_local_mock.dart';
import 'product_widget.dart';

class ResultFound extends StatefulWidget {
  const ResultFound({super.key});

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
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              '5 resultados encontrados',
              style: TextStyle(
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
              itemCount: DataLocalMock.productsToday.length,
              itemBuilder: ((context, index) {
                return ProductWidget(
                    productEntity: DataLocalMock.productsToday[index]);
              })),
        ],
      ),
    );
  }
}
