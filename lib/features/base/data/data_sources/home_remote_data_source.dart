import 'package:base_structure/features/base/data/models/trip_model.dart';

abstract class HomeRemoteDataSource {

  Future<List<TripModel>> getTrips();

}