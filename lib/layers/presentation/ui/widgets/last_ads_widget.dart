// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:corelab_app_challenge/layers/presentation/controllers/home_page_controller.dart';

import 'product_widget.dart';

// ignore: must_be_immutable
class LastAdsWidget extends StatefulWidget {
  HomePageController homePageController;
  LastAdsWidget({
    Key? key,
    required this.homePageController,
  }) : super(key: key);

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
      FutureBuilder(
        future: widget.homePageController.getListProductsToday(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 400.0,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            case ConnectionState.active:
            case ConnectionState.done:
              if (snapshot.hasData) {
                return ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => Divider(
                    height: 0.5,
                    color: Colors.grey.shade300,
                  ),
                  itemCount: snapshot.data!.length,
                  itemBuilder: ((context, index) {
                    return ProductWidget(productEntity: snapshot.data![index]);
                  }),
                );
              } else {
                return Container();
              }
          }
        },
      ),
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
      FutureBuilder(
        future: widget.homePageController.getListProductsYesterday(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 400.0,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            case ConnectionState.active:
            case ConnectionState.done:
              if (snapshot.hasData) {
                return ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => Divider(
                    height: 0.5,
                    color: Colors.grey.shade300,
                  ),
                  itemCount: snapshot.data!.length,
                  itemBuilder: ((context, index) {
                    return ProductWidget(productEntity: snapshot.data![index]);
                  }),
                );
              } else {
                return Container();
              }
          }
        },
      ),
    ]);
  }
}
