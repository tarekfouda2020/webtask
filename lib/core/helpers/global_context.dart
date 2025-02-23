
import 'package:flutter/material.dart';
import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/routes/router_imports.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GlobalContext {
  BuildContext context() =>  getIt.get<AppRouter>().navigatorKey.currentContext!;
}