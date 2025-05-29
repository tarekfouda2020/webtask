
import 'package:base_structure/features/base/data/models/trip_model.dart';

abstract class BaseRepository {

  Future<List<TripModel>> getTrips();


}