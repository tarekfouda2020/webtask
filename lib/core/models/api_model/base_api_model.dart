
import 'package:base_structure/core/models/domain_model/base_domain_model.dart';

abstract class BaseApiModel<T extends BaseDomainModel> {
  const BaseApiModel();

  T toDomainModel();

}
