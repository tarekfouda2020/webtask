part of 'imports_home_widgets.dart';

class BottomNavHomePageWidget extends StatelessWidget {
  final HomeController controller;

  const BottomNavHomePageWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar.builder(
      backgroundColor: context.colors.disableGray,
      itemCount: controller.svgIconPaths.length,
      tabBuilder: (index, isActive) {
        final color = isActive ? context.colors.blue : context.colors.grey;
        final size = isActive ? 25.0 : 5.0;
        return SvgPicture.asset(
          controller.svgIconPaths[index],
          color: color,
          width: size,
          height:size,
        );
      },
      activeIndex: controller.bottomNavIndex.getValue(),
      onTap: (index) {
        controller.changeBottomNavIndex(index);
        print("Active Index: $index");
      },
      gapLocation: GapLocation.none,
      leftCornerRadius: 20,
      rightCornerRadius: 20,
    );
  }
}
