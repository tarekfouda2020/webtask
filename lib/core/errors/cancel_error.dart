import 'package:base_structure/core/localization/translate.dart';

import './base_error.dart';

class CancelError extends BaseError {
   CancelError():super(Translate.s.error_cancel_token);

}
