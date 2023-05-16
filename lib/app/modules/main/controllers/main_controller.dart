import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_bottom_navigation_getx/app/modules/main/models/bottom_navigation_data_model.dart';

class MainController extends GetxController {
  late final PageController pageController;
  var selectedBottomNavigationIndex = 0.obs;

  final bottomNavigationBarData = <BottomNavigationDataModel>[
    BottomNavigationDataModel(label: 'Home', isSelected: true),
    BottomNavigationDataModel(label: 'Booking'),
    BottomNavigationDataModel(label: 'Service'),
    BottomNavigationDataModel(label: 'Offers'),
    BottomNavigationDataModel(label: 'More'),
  ];

  void updateSelectedIndex(int index) {
    selectedBottomNavigationIndex.value = index;
    pageController.jumpToPage(index);
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: 0, keepPage: true);
  }
}
