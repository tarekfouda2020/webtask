import 'package:base_structure/env/app_env_type.dart';
import 'package:base_structure/env/config_handler.dart';
Future<void> main() async {
  await handleConfig(AppEnvType.prod);
}
