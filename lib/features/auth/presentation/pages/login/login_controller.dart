part of 'login_imports.dart';

class LoginController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();



  void onSubmit(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Home()));
    // AutoRouter.of(context).push(const HomeRoute());
    // getIt.get<LoadingHelper>().showLoadingDialog();
  }

}
