import 'package:base_structure/core/localization/translate.dart';

import 'base_error.dart';

class TimeoutError extends BaseError {
  TimeoutError() : super(Translate.s.error_Timeout_Error);
}
