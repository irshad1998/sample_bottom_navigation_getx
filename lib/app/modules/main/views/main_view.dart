import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:sample_bottom_navigation_getx/app/modules/main/views/booking_view.dart';
import 'package:sample_bottom_navigation_getx/app/modules/main/views/home_view.dart';
import 'package:sample_bottom_navigation_getx/app/modules/main/views/more_view.dart';
import 'package:sample_bottom_navigation_getx/app/modules/main/views/offers_view.dart';
import 'package:sample_bottom_navigation_getx/app/modules/main/views/service_view.dart';
import 'package:sample_bottom_navigation_getx/app/modules/main/widgets/bottom_navigation_bar.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              top: 0,
              child: SizedBox(
                width: Get.width,
                height: Get.height - 115,
                child: PageView(
                  controller: controller.pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    HomeView(),
                    BookingView(),
                    ServiceView(),
                    OffersView(),
                    MoreView()
                  ],
                ),
              ),
            ),
            BottomNavigationWidget(
              items: controller.bottomNavigationBarData,
              onItemClick: (index) => controller.updateSelectedIndex(index),
              onServiceButtonClicked: (index) =>
                  controller.updateSelectedIndex(index),
            ),
          ],
        ),
      ),
    );
  }
}
