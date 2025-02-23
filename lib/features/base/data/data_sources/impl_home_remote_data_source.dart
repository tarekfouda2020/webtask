import 'package:base_structure/core/http/generic_http/api_names.dart';
import 'package:base_structure/core/http/generic_http/generic_http.dart';
import 'package:base_structure/core/http/models/http_request_model.dart';
import 'package:base_structure/core/http/models/result.dart';
import 'package:base_structure/features/auth/data/models/user_model/user_model.dart';
import 'package:injectable/injectable.dart';

import 'home_remote_data_source.dart';

@Injectable(as: HomeRemoteDataSource)
class ImplHomeRemoteDataSource extends HomeRemoteDataSource {

  @override
  Future<MyResult<UserModel>> getUser(bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.updateUser,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      refresh: param,
      toJsonFunc: (json) => UserModel.fromJson(json),
    );
    return await GenericHttpImpl<UserModel>()(model);
  }


}
