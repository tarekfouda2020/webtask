import 'package:base_structure/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:base_structure/core/constants/gaps.dart';
import 'package:base_structure/core/helpers/device_type/device_type_service.dart';
import 'package:base_structure/core/theme/colors/colors_extension.dart';
import 'package:base_structure/core/theme/text/app_text_style.dart';
import 'package:base_structure/features/base/presentation/pages/home/home_imports.dart';
import 'package:base_structure/features/base/presentation/pages/home/widgets/nav_bar_item.dart';
import 'package:base_structure/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final HomeController controller;

  const NavBarWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: context.colors.greyWhite,
            width: 0.5,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: DeviceTypeService.instance.isTablet ? 70 : 20),
      child: Row(
        children: [
          DeviceTypeService.instance.whenTableOrElse(
            orElse: () {
              return InkWell(
                child: Padding(
                  padding: EdgeInsetsDirectional.only(end: 10),
                  child: Icon(Icons.menu, size: 20),
                ),
                onTap: () {
                  // Handle search action
                },
              );
            },
            tablet: () => SizedBox(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: SvgPicture.asset(
              Res.logoSVG,
              width: DeviceTypeService.instance.isTablet ? 40 : 20,
              height: DeviceTypeService.instance.isTablet ? 40 : 20,
            ),
          ),
          Spacer(),
          if(!DeviceTypeService.instance.isSemiTablet)
          DeviceTypeService.instance.whenTableOrElse(
            tablet: () {
              return Row(
                children: [
                  ObsValueConsumer(
                      observable: controller.selectedTabObs,
                      builder: (context, selectedIndex) {
                        return Row(
                          children: List.generate(
                            controller.tabs.length,
                            (index) {
                              return NavBarItem(
                                label: controller.tabs[index],
                                isSelected: selectedIndex == index,
                                onTap: () => controller.selectedTabObs.setValue(index),
                              );
                            },
                          ),
                        );
                      }),
                  Container(
                    width: .3,
                    height: 20,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    color: context.colors.greyWhite,
                  ),
                ],
              );
            },
            orElse: () => SizedBox(),
          ),
          InkWell(
            child: SvgPicture.asset(Res.settings, width: 20, height: 20),
            onTap: () {
              // Handle search action
            },
          ),
          Gaps.hGap15,
          InkWell(
            child: SvgPicture.asset(Res.notification, width: 20, height: 20),
            onTap: () {
              // Handle search action
            },
          ),
          Container(
            width: .3,
            height: 20,
            margin: EdgeInsets.symmetric(horizontal: 15),
            color: context.colors.greyWhite,
          ),
          Gaps.hGap10,
          CircleAvatar(
            radius: 12,
            backgroundImage: AssetImage(
              Res.user,
            ),
          ),
          DeviceTypeService.instance.whenTableOrElse(
            tablet: () {
              return Row(
                children: [
                  Gaps.hGap10,
                  Text(
                    "Tarek Fouda",
                    style: AppTextStyle.s14_w400(color: context.colors.white),
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded, color: context.colors.white, size: 20),
                ],
              );
            },
            orElse: () => SizedBox(),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70.0);
}
