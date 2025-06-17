import 'package:hive/hive.dart';
import '../../domain/entities/service_entities.dart';

part 'service_model.g.dart';

@HiveType(typeId: 1)
class ServiceModel extends Service {
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

  const ServiceModel({
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

  factory ServiceModel.fromMap(Map<String, dynamic> map) {
    return ServiceModel(
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

  factory ServiceModel.fromEntity(Service service) {
    return ServiceModel(
      id: service.id,
      createdAt: service.createdAt,
      name: service.name,
      image: service.image,
      time: service.time,
    );
  }
}
