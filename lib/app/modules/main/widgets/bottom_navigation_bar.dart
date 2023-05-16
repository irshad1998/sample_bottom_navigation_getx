import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_bottom_navigation_getx/app/modules/main/models/bottom_navigation_data_model.dart';

// ignore: must_be_immutable
class BottomNavigationWidget extends StatefulWidget {
  BottomNavigationWidget(
      {super.key,
      required this.items,
      this.onItemClick,
      this.onServiceButtonClicked});

  final List<BottomNavigationDataModel> items;
  Function(int index)? onItemClick;
  Function(int index)? onServiceButtonClicked;

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 135,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: Get.width,
              height: 20,
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xffF2F2F8)))),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: Get.width,
              height: 50,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 20,
            child: Container(
              color: Colors.white,
              width: Get.width,
              child: Column(
                children: [
                  const SizedBox(height: 23),
                  Container(
                    width: Get.width,
                    height: 44,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ...widget.items.asMap().entries.map((e) => e.key == 2
                            ? const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: SizedBox.shrink(),
                              )
                            : Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  highlightColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  onTap: () {
                                    _onItemClicked(e.key);
                                    widget.onItemClick?.call(e.key);
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle),
                                    height: 44,
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/${e.value.label.toLowerCase()}${e.value.isSelected! ? '_selected' : '_un_selected'}.svg',
                                        ),
                                        const SizedBox(height: 10.17),
                                        Text(
                                          e.value.label,
                                          style: GoogleFonts.montserrat(
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold,
                                              color: e.value.isSelected!
                                                  ? const Color(0xffE11425)
                                                  : const Color(0xff97979D)),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                widget.onServiceButtonClicked?.call(2);
                _onCenterItemClicked();
              },
              child: SizedBox(
                width: 69.13,
                child: Column(
                  children: [
                    SvgPicture.asset('assets/icons/service_red.svg'),
                    const SizedBox(height: 2.63),
                    Text(
                      widget.items[2].label,
                      style: GoogleFonts.montserrat(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: widget.items[2].isSelected!
                              ? const Color(0xffE11425)
                              : const Color(0xff97979D)),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onCenterItemClicked() {
    for (int i = 0; i < widget.items.length; i++) {
      widget.items[i].isSelected = false;
    }
    widget.items[2].isSelected = true;
    setState(() {});
  }

  void _onItemClicked(int index) {
    for (int i = 0; i < widget.items.length; i++) {
      if (i == index) {
        widget.items[i].isSelected = true;
      } else {
        widget.items[i].isSelected = false;
      }
    }
    setState(() {});
  }
}
