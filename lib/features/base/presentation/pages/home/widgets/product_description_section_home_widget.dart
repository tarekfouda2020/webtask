part of 'imports_home_widgets.dart';
class ProductDescriptionSectionHomeWidget extends StatelessWidget {
  const ProductDescriptionSectionHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      spacing:Dimens.dp10,
      children: [
        Gaps.vGap16,
        ProductDescriptionTextHomeWidget(
         description:"Nissan Sunny (1.6L) 2021 Model",
        ),
        ProductDescriptionTextHomeWidget(
         description:"GCC Spce",
        ),
        ProductDescriptionTextHomeWidget(
         description:"Fully Automatic Transmission",
        ),
        ProductDescriptionTextHomeWidget(
         description:"45000KM Driven",
        ),
        ProductDescriptionTextHomeWidget(
          description:"Single Owner",
        ),
        ProductDescriptionTextHomeWidget(
          description:"Accident-Free",
        ),
        ProductDescriptionTextHomeWidget(
          description:"Original paint",
        ),
        ProductDescriptionTextHomeWidget(
          description:"Reverse Parking Sensors Available",
        ),
        ProductDescriptionTextHomeWidget(
          description:"Perfect Condition Inside And Outside",
        ),
        Gaps.vGap24,
        Gaps.hLine
      ],
    );
  }
}
