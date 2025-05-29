
import 'package:base_structure/core/bloc/base_bloc/base_bloc.dart';
import 'package:base_structure/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:base_structure/core/constants/gaps.dart';
import 'package:base_structure/core/helpers/device_type/device_type_service.dart';
import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/theme/colors/colors_extension.dart';
import 'package:base_structure/features/base/data/models/trip_model.dart';
import 'package:base_structure/features/base/domain/repositories/base_repository.dart';
import 'package:base_structure/features/base/presentation/pages/home/widgets/header_widget.dart';
import 'package:base_structure/features/base/presentation/pages/home/widgets/nav_bar_widget.dart';
import 'package:base_structure/features/base/presentation/pages/home/widgets/task_card.dart';
import 'package:flutter/material.dart';
import 'package:base_structure/core/bloc/value_state_manager/value_state_manager_import.dart';


part 'home.dart';
part 'home_controller.dart';