import 'package:base_structure/core/constants/gaps.dart';
import 'package:base_structure/core/helpers/device_type/device_type_service.dart';
import 'package:base_structure/core/theme/colors/colors_extension.dart';
import 'package:base_structure/core/theme/text/app_text_style.dart';
import 'package:base_structure/features/base/presentation/pages/home/widgets/new_item_button.dart';
import 'package:base_structure/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Items',
            style: DeviceTypeService.instance.isTablet ? AppTextStyle.s24_w500(color: context.colors.white) :  AppTextStyle.s20_w500(color: context.colors.white),
          ),
          Spacer(),
          InkWell(
            child: SvgPicture.asset(
              Res.filter,
              width: DeviceTypeService.instance.isTablet ? 45 : 35,
              height: DeviceTypeService.instance.isTablet ? 45 : 35,
            ),
            onTap: () {
              // Handle notification action
            },
          ),
          DeviceTypeService.instance.whenTableOrElse(
            tablet: () {
              return Row(
                children: [
                  Gaps.hGap22,
                  NewItemButton(),
                ],
              );
            },
            orElse: () => SizedBox(),
          ),
        ],
      ),
    );
  }
}
