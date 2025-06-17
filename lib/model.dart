import 'package:equatable/equatable.dart';

class ResponseHome extends Equatable {
  final List<Poster>? poster;
  final List<Service>? service;
  final List<RestaurantNearby>? restaurantNearby;

  const ResponseHome({this.poster, this.service, this.restaurantNearby});

  factory ResponseHome.fromMap(Map<String, dynamic> data) => ResponseHome(
    poster:
        (data['poster'] as List<dynamic>?)
            ?.map((e) => Poster.fromJson(e as Map<String, dynamic>))
            .toList(),
    service:
        (data['service'] as List<dynamic>?)
            ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
            .toList(),
    restaurantNearby:
        (data['restaurants_nearby'] as List<dynamic>?)
            ?.map((e) => RestaurantNearby.fromJson(e as Map<String, dynamic>))
            .toList(),
  );

  Map<String, dynamic> toJson() => {
    'poster': poster?.map((e) => e.toJson()).toList(),
    'service': service?.map((e) => e.toJson()).toList(),
    'restaurantNearby': restaurantNearby?.map((e) => e.toJson()).toList(),
  };

  @override
  List<Object?> get props => [poster, service, restaurantNearby];
}

class Poster extends Equatable {
  final int id;
  final DateTime createdAt;
  final String image;

  const Poster({
    required this.id,
    required this.createdAt,
    required this.image,
  });

  @override
  List<Object?> get props => [id, createdAt, image];

  factory Poster.fromJson(Map<String, dynamic> json) {
    return Poster(
      id: json['id'],
      createdAt: DateTime.parse(json['created_at']),
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'created_at': createdAt.toIso8601String(),
      'image': image,
    };
  }
}

class Service extends Equatable {
  final int id;
  final DateTime createdAt;
  final String name;
  final String image;
  final int time;

  const Service({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.image,
    required this.time,
  });

  @override
  List<Object?> get props => [id, createdAt, name, image, time];

  factory Service.fromJson(Map<String, dynamic> json) {
    return Service(
      id: json['id'],
      createdAt: DateTime.parse(json['created_at']),
      name: json['name'],
      image: json['image'],
      time: json['time'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'created_at': createdAt.toIso8601String(),
      'name': name,
      'image': image,
      'time': time,
    };
  }
}

class RestaurantNearby extends Equatable {
  final int id;
  final DateTime createdAt;
  final String name;
  final String image;
  final int time;

  const RestaurantNearby({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.image,
    required this.time,
  });

  @override
  List<Object?> get props => [id, createdAt, name, image, time];

  factory RestaurantNearby.fromJson(Map<String, dynamic> json) {
    return RestaurantNearby(
      id: json['id'],
      createdAt: DateTime.parse(json['created_at']),
      name: json['name'],
      image: json['image'],
      time: json['time'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'created_at': createdAt.toIso8601String(),
      'name': name,
      'image': image,
      'time': time,
    };
  }
}
