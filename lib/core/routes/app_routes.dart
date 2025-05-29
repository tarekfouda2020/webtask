import 'package:base_structure/features/base/presentation/pages/home/home_imports.dart';
import 'package:go_router/go_router.dart';

final appRoutes = [
  GoRoute(
    name: HomeScreen.name,
    path: HomeScreen.path,
    builder: (context, state) => HomeScreen(),
  ),

];
