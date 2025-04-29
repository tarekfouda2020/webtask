part of 'imports_home_widgets.dart';

class ProductDescriptionTextHomeWidget extends StatelessWidget {
  final String? description;
  const ProductDescriptionTextHomeWidget({super.key, this.description});

  @override
  Widget build(BuildContext context) {
    return Text("$description *",style:AppTextStyle.s16_w400(color: context.colors.black));
  }
}
