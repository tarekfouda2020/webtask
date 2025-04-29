part of 'home_imports.dart';

class HomeScreen extends StatefulWidget {
  static final String name = 'home';
  final String userId;

  const HomeScreen({super.key, required this.userId});

  static String path({required String userId}) => '/home/$userId';

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  final HomeController controller = HomeController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      body: CustomScrollView(
        slivers: [
          FlexibleHomeAppBarWidget(
            title: FlexibleHomeAppBarTitleWidget(),
            leading: LeadingFlexibleHomeAppBarWidget(),
            background: SliverAppBarBackGroundHomeWidgets(
              controller: controller,
            ),
            expandedHeight: 300,
          ),
          SliverToBoxAdapter(child: HomeScreenDataHomeWidget()),
        ],
      ),
      bottomNavigationBar: BottomNavHomePageWidget(controller: controller),
    );
  }
}
