part of 'login_imports.dart';

class LoginController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();



  void onSubmit(BuildContext context){
    AppNavigator.instance.push(context, path: HomeScreen.path(userId: "1"));
  }

}
