import 'package:task/features/home/data/models/poster_model.dart';

import '../../domain/entities/home_entity.dart';
import 'package:hive/hive.dart';
import 'restaurant_model.dart';
import 'service_model.dart';

part 'response_home_model.g.dart';

@HiveType(typeId: 3)
class ResponseHomeModel extends HomeEntity {
  @override
  @HiveField(0)
  final List<RestaurantModel> restaurants;

  @override
  @HiveField(1)
  final List<ServiceModel> services;

  @override
  @HiveField(2)
  final List<PosterModel> posters;

  const ResponseHomeModel({
    required this.restaurants,
    required this.services,
    required this.posters,
  }) : super(restaurants: restaurants, services: services, posters: posters);

  factory ResponseHomeModel.fromMap(Map<String, dynamic> map) {
    return ResponseHomeModel(
      restaurants:
          (map['restaurants_nearby'] as List)
              .map((e) => RestaurantModel.fromMap(e))
              .toList(),
      services:
          (map['service'] as List).map((e) => ServiceModel.fromMap(e)).toList(),
      posters:
          (map['posters'] as List).map((e) => PosterModel.fromMap(e)).toList(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'restaurants_nearby': restaurants.map((e) => e.toMap()).toList(),
      'service': services.map((e) => e.toMap()).toList(),
      'posters': posters.map((e) => e.toMap()).toList(),
    };
  }

  factory ResponseHomeModel.fromEntity(HomeEntity responseHome) {
    return ResponseHomeModel(
      restaurants:
          responseHome.restaurants
              .map((e) => RestaurantModel.fromEntity(e))
              .toList(),
      services:
          responseHome.services.map((e) => ServiceModel.fromEntity(e)).toList(),
      posters:
          responseHome.posters.map((e) => PosterModel.fromEntity(e)).toList(),
    );
  }
}
