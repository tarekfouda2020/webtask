// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:base_structure/core/helpers/file_service.dart' as _i1061;
import 'package:base_structure/core/helpers/injection_module.inject.dart'
    as _i533;
import 'package:base_structure/core/helpers/loading_helper.dart' as _i633;
import 'package:base_structure/core/helpers/local_storage/i_storage_helper.dart'
    as _i98;
import 'package:base_structure/core/helpers/local_storage/storage_helper.inject.dart'
    as _i1041;
import 'package:base_structure/core/helpers/psermission_services.dart' as _i239;
import 'package:base_structure/core/helpers/share_services.dart' as _i33;
import 'package:base_structure/core/helpers/utilities.dart' as _i616;
import 'package:base_structure/core/http/dio_helper/actions/delete.dart'
    as _i984;
import 'package:base_structure/core/http/dio_helper/actions/get.dart' as _i776;
import 'package:base_structure/core/http/dio_helper/actions/patch.dart'
    as _i300;
import 'package:base_structure/core/http/dio_helper/actions/post.dart' as _i661;
import 'package:base_structure/core/http/dio_helper/actions/put.dart' as _i275;
import 'package:base_structure/core/http/dio_helper/utils/dio_header.dart'
    as _i286;
import 'package:base_structure/core/http/dio_helper/utils/dio_options.dart'
    as _i961;
import 'package:base_structure/core/http/dio_helper/utils/handle_errors.dart'
    as _i669;
import 'package:base_structure/core/http/dio_helper/utils/handle_json_response.dart'
    as _i889;
import 'package:base_structure/core/http/dio_helper/utils/handle_request_body.dart'
    as _i1042;
import 'package:base_structure/core/http/generic_http/generic_http.dart'
    as _i496;
import 'package:base_structure/core/network/network_info.dart' as _i953;
import 'package:base_structure/features/base/data/data_sources/home_remote_data_source.dart'
    as _i86;
import 'package:base_structure/features/base/data/data_sources/impl_home_remote_data_source.dart'
    as _i331;
import 'package:base_structure/features/base/data/repositories/impl_base_repository.dart'
    as _i990;
import 'package:base_structure/features/base/domain/repositories/base_repository.dart'
    as _i331;
import 'package:get_it/get_it.dart' as _i174;
import 'package:go_router/go_router.dart' as _i583;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectionModule = _$InjectionModule();
    gh.factory<_i33.ShareServices>(() => _i33.ShareServices());
    gh.factory<_i1061.AppFileService>(() => _i1061.AppFileService());
    gh.factory<_i239.PermissionServices>(() => _i239.PermissionServices());
    gh.singleton<_i633.LoadingHelper>(() => _i633.LoadingHelper());
    gh.lazySingleton<_i953.NetworkInfoImpl>(() => _i953.NetworkInfoImpl());
    gh.lazySingleton<_i961.DioOptions>(() => _i961.DioOptions());
    gh.lazySingleton<_i669.HandleErrors>(() => _i669.HandleErrors());
    gh.lazySingleton<_i1042.HandleRequestBody>(
        () => _i1042.HandleRequestBody());
    gh.lazySingleton<_i889.HandleJsonResponse<dynamic>>(
        () => _i889.HandleJsonResponse<dynamic>());
    gh.lazySingleton<_i286.DioHeader>(() => _i286.DioHeader());
    gh.lazySingleton<_i300.Patch>(() => _i300.Patch());
    gh.lazySingleton<_i661.Post>(() => _i661.Post());
    gh.lazySingleton<_i984.Delete>(() => _i984.Delete());
    gh.lazySingleton<_i776.Get>(() => _i776.Get());
    gh.lazySingleton<_i275.Put>(() => _i275.Put());
    gh.lazySingleton<_i496.GenericHttpImpl<dynamic>>(
        () => _i496.GenericHttpImpl<dynamic>());
    gh.lazySingleton<_i974.Logger>(() => injectionModule.logger);
    gh.lazySingleton<_i583.GoRouter>(() => injectionModule.appRouter);
    gh.lazySingleton<_i616.Utilities>(() => _i616.Utilities());
    gh.factory<_i86.HomeRemoteDataSource>(
        () => _i331.ImplHomeRemoteDataSource());
    gh.factory<_i98.IStorageHelper>(() => _i1041.StorageHelper());
    gh.factory<_i331.BaseRepository>(() => _i990.ImplBaseRepository());
    return this;
  }
}

class _$InjectionModule extends _i533.InjectionModule {}
