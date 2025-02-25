part of 'splash_imports.dart';

class SplashScreen extends StatefulWidget {
  static var name = 'splash';
  static var path = '/splash';
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashState();

}

class _SplashState extends State<SplashScreen> {
  final SplashController controller = SplashController();

  @override
  void initState() {
    controller.manipulateSaveData(context);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    precacheImage(const AssetImage(Res.logo), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Center(
        child: TextAnimator(
          'Base Structure',
          initialDelay: const Duration(milliseconds: 1000),
          style: AppTextStyle.s32_w700(color: context.colors.black),
          incomingEffect: WidgetTransitionEffects.incomingScaleDown(
            duration: const Duration(milliseconds: 600),
          ),
        ),
      ),
    );
  }
}
