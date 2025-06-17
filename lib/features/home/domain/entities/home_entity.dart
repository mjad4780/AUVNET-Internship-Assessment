import 'package:equatable/equatable.dart';
import 'restaurant_entities.dart';

import 'posters_entities.dart';
import 'service_entities.dart';

class HomeEntity extends Equatable {
  final List<Restaurant> restaurants;
  final List<Service> services;
  final List<Poster> posters;

  const HomeEntity({
    required this.restaurants,
    required this.services,
    required this.posters,
  });

  @override
  List<Object?> get props => [restaurants, services, posters];
}
