import 'package:base_structure/core/constants/gaps.dart';
import 'package:base_structure/core/theme/colors/colors_extension.dart';
import 'package:base_structure/core/theme/text/app_text_style.dart';
import 'package:flutter/material.dart';

class NewItemButton extends StatelessWidget {
  const NewItemButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: context.colors.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(Icons.add, color: context.colors.black),
          Gaps.hGap10,
          Text(
            'Add a New Item',
            style: AppTextStyle.s14_w500(
              color: context.colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
