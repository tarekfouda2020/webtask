part of 'imports_home_widgets.dart';

class ProductSliderHomeWidget extends StatelessWidget {
  final HomeController controller;

  const ProductSliderHomeWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 200,
            viewportFraction: 1,
            autoPlay: true,
            onPageChanged: (index, reason) {
              controller.updateCurrentImageIndex(index);
            },
          ),
          items: controller.imagesList.map((image) {
            return Image.asset(
              image,
              fit: BoxFit.cover,
              width: double.infinity,
            );
          }).toList(),
        ),
        Gaps.vGap10,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ],
        )
      ],
    );
  }
}
