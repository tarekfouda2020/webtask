part of 'imports_home_widgets.dart';

class SliverAppBarBackGroundHomeWidgets extends StatelessWidget {
  final HomeController controller;

  const SliverAppBarBackGroundHomeWidgets(
      {super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  height: 250.0, viewportFraction: 1, autoPlay: true),
              items: controller.imagesList.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return CachedImage(
                      width: MediaQuery.of(context).size.width,
                      url: i,
                      fit: BoxFit.cover,
                    );
                  },
                );
              }).toList(),
            ),
            Gaps.vGap10,
            ContainerSliverAppBarDetailsHomeWidget()
          ],
        ),
        Positioned(
            bottom: 60,
            left:16,
            child: Row(
              spacing: Dimens.dp8,
              children: [
                ContainersActionsAppBarHomeWidget(
                    icon: Icons.warning_amber_outlined),
                ContainersActionsAppBarHomeWidget(icon: Icons.share),
                ContainersActionsAppBarHomeWidget(
                    icon: Icons.favorite_border_outlined),
              ],
            )),
      ],
    );
  }
}
