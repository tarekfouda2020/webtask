import 'package:base_structure/core/localization/translate.dart';

import 'base_error.dart';

class ConflictError extends BaseError {
   ConflictError() : super(Translate.s.error_conflict);
}
