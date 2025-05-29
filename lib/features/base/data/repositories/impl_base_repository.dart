import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/http/models/result.dart';
import 'package:base_structure/core/models/model_to_domain/model_to_domain.dart';
import 'package:base_structure/features/base/data/data_sources/home_remote_data_source.dart';
import 'package:base_structure/features/base/data/models/trip_model.dart';
import 'package:base_structure/features/base/domain/repositories/base_repository.dart';
import 'package:injectable/injectable.dart';


@Injectable(as: BaseRepository)
class ImplBaseRepository extends BaseRepository with ModelToDomainResult {
  @override
  Future<List<TripModel>> getTrips() {
    return getIt<HomeRemoteDataSource>().getTrips();
  }



}