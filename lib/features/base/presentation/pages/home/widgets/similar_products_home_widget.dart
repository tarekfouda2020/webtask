part of 'imports_home_widgets.dart';

class SimilarProductsHomeWidget extends StatelessWidget {
  final HomeController controller;

  const SimilarProductsHomeWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Gaps.hGap16,
            SvgPicture.asset(Res.backArrow,
                color: context.colors.disableGray, height: 18),
            Spacer(),
            Text("منتجات مشابهة",
                style: AppTextStyle.s14_w400(color: context.colors.black))
          ],
        ),
        Gaps.vGap10,
        SingleChildScrollView(
          // clipBehavior: Clip.antiAlias,
          // padding: EdgeInsets.all(8),
          scrollDirection: Axis.horizontal,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              controller.similarImageList.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal:5),
                child: CachedImage(
                  // fit:BoxFit.con,
                  height:150,
                    width:200,
                    url: controller.similarImageList[index],
                  // borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
