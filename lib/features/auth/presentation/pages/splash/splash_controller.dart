part of 'splash_imports.dart';

class SplashController {
  void manipulateSaveData(BuildContext context) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var userStr = preferences.getString("user");
    await Future.delayed(const Duration(seconds: 4));
    AppNavigator.instance.push(context, path: LoginScreen.path);
  }

}
