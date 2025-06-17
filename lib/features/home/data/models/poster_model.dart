import 'package:hive/hive.dart';
import '../../domain/entities/posters_entities.dart';

part 'poster_model.g.dart';

@HiveType(typeId: 2)
class PosterModel extends Poster {
  @override
  @HiveField(0)
  final int id;

  @override
  @HiveField(1)
  final DateTime createdAt;

  @override
  @HiveField(2)
  final String image;

  const PosterModel({
    required this.id,
    required this.createdAt,
    required this.image,
  }) : super(id: id, createdAt: createdAt, image: image);

  factory PosterModel.fromMap(Map<String, dynamic> map) {
    return PosterModel(
      id: map['id'],
      createdAt: DateTime.parse(map['created_at']),
      image: map['image'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': createdAt.toIso8601String(),
      'image': image,
    };
  }

  factory PosterModel.fromEntity(Poster poster) {
    return PosterModel(
      id: poster.id,
      createdAt: poster.createdAt,
      image: poster.image,
    );
  }
}
