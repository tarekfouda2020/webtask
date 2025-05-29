part of 'home_imports.dart';

class HomeScreen extends StatefulWidget {
  static final String name = 'home';
  static final String path = '/home';

  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  final HomeController controller = HomeController();

  @override
  void initState() {
    controller.fetchItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: NavBarWidget(
        controller: controller,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: DeviceTypeService.instance.isTablet? 70 : 20,vertical: 10),
        child: Column(
          children: [
            HeaderWidget(),
            Gaps.vGap10,
            BaseBlocBuilder(
              bloc: controller.itemsBloc,
              onSuccessWidget: (items) {
                return Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: (MediaQuery.of(context).size.width / 350).ceil(),
                      mainAxisExtent: 300,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return TaskCard(model: items[index],);
                    },
                  ),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}
