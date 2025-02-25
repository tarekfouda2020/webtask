import 'package:base_structure/core/errors/base_error.dart';
import 'package:base_structure/core/localization/translate.dart';
import 'package:base_structure/core/theme/colors/app_colors.dart';
import 'package:base_structure/core/theme/text/app_text_style.dart';
import 'package:flutter/material.dart';

class FailureScreen extends StatelessWidget {
  final BaseError error;
  final VoidCallback? callback;
  final String? callbackActionTitle;

  const FailureScreen({
    super.key,
    required this.error,
    required this.callback,
    this.callbackActionTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            Translate.of(context).back,
            style: AppTextStyle.s14_w500(color: AppColors.fixedColors.blackOpacity)
                .copyWith(height: 2.5),
          ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            error.message,
            style: AppTextStyle.s16_w700(color: AppColors.fixedColors.blackOpacity),
          ),
        ],
      ),
    );
  }
}
