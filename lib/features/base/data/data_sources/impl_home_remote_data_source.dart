import 'dart:convert';
import 'package:base_structure/features/base/data/models/trip_model.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import 'home_remote_data_source.dart';

@Injectable(as: HomeRemoteDataSource)
class ImplHomeRemoteDataSource extends HomeRemoteDataSource {


  @override
  Future<List<TripModel>> getTrips() async {
    try {
      // Load mock data from assets
      final String jsonString = await rootBundle.loadString('assets/trips_mock.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);

      final List<dynamic> tripsJson = jsonData['trips'] as List<dynamic>;
      return tripsJson
          .map((json) => TripModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw Exception('Failed to load trips: $e');
    }
  }

}
