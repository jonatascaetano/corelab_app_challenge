// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:corelab_app_challenge/layers/domain/entities/product_entity.dart';

// ignore: must_be_immutable
class ProductWidget extends StatelessWidget {
  ProductEntity productEntity;
  ProductWidget({
    Key? key,
    required this.productEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      //height: 212,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              productEntity.imageUrl,
              //width: 40,
              height: 100,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              //color: Colors.blue.shade200,
              //height: 212,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  productEntity.discount == 0
                      ? Container()
                      : Container(
                          padding: const EdgeInsets.all(4.0),
                          decoration: const BoxDecoration(
                            color: Color(0xff00B4CC),
                            borderRadius: BorderRadius.all(
                              Radius.circular(4.0),
                            ),
                          ),
                          child: Text(
                            "${productEntity.discount}% OFF",
                            style: const TextStyle(
                              fontSize: 14,
                              decoration: TextDecoration.none,
                              fontFamily: "DM Sans",
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    productEntity.name,
                    style: const TextStyle(
                      fontSize: 18,
                      decoration: TextDecoration.none,
                      fontFamily: "DM Sans",
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  productEntity.discount == 0
                      ? Container()
                      : Text(
                          'R\$ ${productEntity.price.toStringAsFixed(2).replaceAll(".", ",")}',
                          style: const TextStyle(
                            fontSize: 18,
                            decoration: TextDecoration.lineThrough,
                            decorationStyle: TextDecorationStyle.solid,
                            decorationColor: Colors.grey,
                            fontFamily: "DM Sans",
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    productEntity.discount == 0
                        ? 'R\$ ${productEntity.price.toStringAsFixed(2).replaceAll(".", ",")}'
                        : 'R\$${(productEntity.price - (productEntity.price * (productEntity.discount / 100))).toStringAsFixed(2).replaceAll(".", ",")}',
                    style: const TextStyle(
                      fontSize: 18,
                      decoration: TextDecoration.none,
                      fontFamily: "DM Sans",
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Em até 12x de R\$ ${(productEntity.price / 12).toStringAsFixed(2).replaceAll(".", ",")}',
                    style: const TextStyle(
                      fontSize: 18,
                      decoration: TextDecoration.none,
                      fontFamily: "DM Sans",
                      color: Color(0xff00B4CC),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    'Novo',
                    style: TextStyle(
                      fontSize: 18,
                      decoration: TextDecoration.none,
                      fontFamily: "DM Sans",
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
