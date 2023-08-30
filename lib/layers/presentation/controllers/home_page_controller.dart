import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  Rx<String> query = "".obs;
  late FocusNode focusNode;
  Rx<bool> page = false.obs;
  Rx<bool> showArrow = false.obs;
  Rx<TextEditingController> queryController = TextEditingController().obs;

  @override
  void onInit() {
    super.onInit();
    focusNode = FocusNode();
    focusNode.addListener(() {
      showArrow.value = focusNode.hasFocus;
      page.value = focusNode.hasFocus;
      update();
    });
  }

  updateQuery({required String value}) {
    query.value = value;
  }

  removeFocus() {
    focusNode.unfocus();
    page.value = false;
    showArrow.value = false;
    query.value = "";
    queryController.value.text = "";
    update();
  }
}
