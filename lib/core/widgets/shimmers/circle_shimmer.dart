import 'package:flutter/material.dart';
import 'package:base_structure/core/theme/colors/colors_extension.dart';
import 'package:base_structure/core/widgets/shimmers/base_shimmer_widget.dart';

class CircleShimmer extends StatelessWidget {
  final double radius;

  const CircleShimmer({super.key, required this.radius});

  @override
  Widget build(BuildContext context) {
    return BaseShimmerWidget(
      child: Container(
        width: radius,
        height: radius,
        decoration:  BoxDecoration(
          color: context.colors.white,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
