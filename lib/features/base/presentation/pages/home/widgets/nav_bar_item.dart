import 'package:base_structure/core/theme/colors/colors_extension.dart';
import 'package:base_structure/core/theme/text/app_text_style.dart';
import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final bool isSelected;
  final String label;
  final VoidCallback onTap;

  const NavBarItem({super.key, required this.label, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox.shrink(),
            Text(
              label,
              style: AppTextStyle.s14_w400(
                  color: isSelected ? context.colors.white : context.colors.greyWhite),
            ),
            Visibility(
              visible: isSelected,
              child: Container(
                height: 2.0,
                width: 40.0,
                color: context.colors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
