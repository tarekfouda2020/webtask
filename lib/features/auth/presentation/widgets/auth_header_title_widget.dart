import 'package:flutter/material.dart';
import 'package:base_structure/core/theme/colors/colors_extension.dart';
import 'package:base_structure/core/theme/text/app_text_style.dart';

class AuthHeaderTitleWidget extends StatelessWidget {
  final String title;
  final String subTitle;

  const AuthHeaderTitleWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.s20_w500(color: context.colors.black),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 40),
          child: Text(
            subTitle,
            style: AppTextStyle.s16_w500(color: context.colors.blackOpacity),
          ),
        ),
      ],
    );
  }
}
