import 'package:base_structure/core/localization/translate.dart';

import 'base_error.dart';

class PageNotFoundError extends BaseError {
  PageNotFoundError({this.msg}) : super(msg ?? Translate.s.page_not_found);

  final String? msg;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is PageNotFoundError &&
          runtimeType == other.runtimeType &&
          message == other.message;

  @override
  int get hashCode => super.hashCode ^ message.hashCode;

  @override
  bool get isNonRetryable => true;
}
