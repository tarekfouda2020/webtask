part of 'imports_home_widgets.dart';
class HomeScreenDataHomeWidget extends StatelessWidget {
   HomeScreenDataHomeWidget({super.key});

  final HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding:EdgeInsets.symmetric(horizontal:16,vertical:8),
      children: [
        DataAndDetailsSectionHomeWidget(),
        Gaps.vGap20,
        ProductDescriptionSectionHomeWidget(),
        Gaps.vGap20,
        SimilarProductsHomeWidget(controller:controller)
      ],
    );
  }
}
