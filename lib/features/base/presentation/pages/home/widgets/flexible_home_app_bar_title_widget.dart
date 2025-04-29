part of 'imports_home_widgets.dart';
class FlexibleHomeAppBarTitleWidget extends StatelessWidget {
  const FlexibleHomeAppBarTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("40,000 AED",
                style:
                AppTextStyle.s13_w500(color: context.colors.blue)),
            Gaps.vGap4,
            Text(
              "Nissan Sunny (1.6L) 2021",
              style: AppTextStyle.s14_w500(color: context.colors.black),
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_outlined,
          size: 25,
          color: context.colors.grey,
        )
      ],
    );
  }
}
