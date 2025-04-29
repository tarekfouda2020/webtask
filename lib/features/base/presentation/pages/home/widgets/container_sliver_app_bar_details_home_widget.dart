part of 'imports_home_widgets.dart';
class ContainerSliverAppBarDetailsHomeWidget extends StatelessWidget {
  const ContainerSliverAppBarDetailsHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsetsDirectional.only(end: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "40,000",
                  style: AppTextStyle.s18_w500(
                      color: context.colors.bluishGreen)),
              TextSpan(
                  text: "درهم",
                  style: AppTextStyle.s16_w500(
                      color: context.colors.bluishGreen)),
            ]),
          ),
          Gaps.vGap8,
          Text(
            "Nissan Sunny (1.6L) 2021",
            style: AppTextStyle.s18_w600(color: context.colors.black),
          )
        ],
      ),
    );
  }
}
