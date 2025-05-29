import 'package:base_structure/core/helpers/local_storage/storage_helper.inject.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:base_structure/core/bloc/device_cubit/device_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/helpers/di.dart';
import 'my_app.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  getIt.registerSingleton(SharedPreferences.getInstance());
  await StorageHelper.init();
  await configureDependencies();
  runApp(
    BlocProvider(
      create: (BuildContext context) => DeviceCubit(),
      child:  Phoenix(child: const MyApp()),
    ),
  );
}

