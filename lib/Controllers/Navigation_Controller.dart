import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  static NavigationController instance = Get.find();
  final GlobalKey<NavigatorState> navKey = GlobalKey();

  Future<dynamic> navigateTo(String routeName) {
    return navKey.currentState!.pushNamed(routeName);
  }

  goBack() => navKey.currentState!.pop();
}
