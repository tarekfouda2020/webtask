import 'package:base_structure/core/http/models/result.dart';
import 'package:base_structure/features/auth/domain/models/user_domain_model.dart';

abstract class BaseRepository {

  Future<MyResult<UserDomainModel>> getUser(bool param);

}