import 'package:flutter/material.dart';

import '../../../data/utils/data_local_mock.dart';
import 'product_widget.dart';

class LastAdsWidget extends StatefulWidget {
  const LastAdsWidget({super.key});

  @override
  State<LastAdsWidget> createState() => _LastAdsWidgetState();
}

class _LastAdsWidgetState extends State<LastAdsWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(shrinkWrap: true, children: [
      const Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
        child: Text(
          'Últimos anúncios',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: "DM Sans",
          ),
        ),
      ),
      // const SizedBox(
      //   height: 20,
      // ),
      const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(
          'Hoje',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: "DM Sans",
            color: Color(0xff7C9094),
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
      Divider(
        height: 0.5,
        color: Colors.grey.shade300,
      ),
      const SizedBox(
        height: 20,
      ),
      const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(
          'Ontem',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: "DM Sans",
            color: Color(0xff7C9094),
          ),
        ),
      ),
      const SizedBox(
        height: 20,
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
          itemCount: DataLocalMock.productsYesterday.length,
          itemBuilder: ((context, index) {
            return ProductWidget(
                productEntity: DataLocalMock.productsYesterday[index]);
          }))
    ]);
  }
}
