import 'package:hive/hive.dart';
import '../../domain/entities/restaurant_entities.dart';

part 'restaurant_model.g.dart';

@HiveType(typeId: 0)
class RestaurantModel extends Restaurant {
  @override
  @HiveField(0)
  final int id;

  @override
  @HiveField(1)
  final DateTime createdAt;

  @override
  @HiveField(2)
  final String name;

  @override
  @HiveField(3)
  final String image;

  @override
  @HiveField(4)
  final int time;

  const RestaurantModel({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.image,
    required this.time,
  }) : super(
         id: id,
         createdAt: createdAt,
         name: name,
         image: image,
         time: time,
       );

  factory RestaurantModel.fromMap(Map<String, dynamic> map) {
    return RestaurantModel(
      id: map['id'],
      createdAt: DateTime.parse(map['created_at']),
      name: map['name'] ?? '',
      image: map['image'] ?? '',
      time: map['time'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': createdAt.toIso8601String(),
      'name': name,
      'image': image,
      'time': time,
    };
  }

  factory RestaurantModel.fromEntity(Restaurant restaurant) {
    return RestaurantModel(
      id: restaurant.id,
      createdAt: restaurant.createdAt,
      name: restaurant.name,
      image: restaurant.image,
      time: restaurant.time,
    );
  }
}
