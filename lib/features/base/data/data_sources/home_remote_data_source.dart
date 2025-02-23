import 'package:base_structure/core/http/models/result.dart';
import 'package:base_structure/features/auth/data/models/user_model/user_model.dart';

abstract class HomeRemoteDataSource {

  Future<MyResult<UserModel>> getUser(bool param);


}