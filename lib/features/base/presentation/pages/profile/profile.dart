part of 'profile_imports.dart';

class ProfileScreen extends StatefulWidget {
  static final String name = 'profile';
  static final String path = '/profile';
  const ProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ProfileState();

}

class _ProfileState extends State<ProfileScreen> {
  late ProfileController controller;

  @override
  void initState() {
    controller = ProfileController(4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RequesterConsumer(
        requester: controller._profileRequester,
        successBuilder: (context, data, isLoading) {
          return Container();
        },
        loadingBuilder: (context) {
          return Container();
        },
        failureBuilder: (context, error, callback) {
          callback.call();
          error.message;
          return Container();
        }
      )
    );
  }
}
