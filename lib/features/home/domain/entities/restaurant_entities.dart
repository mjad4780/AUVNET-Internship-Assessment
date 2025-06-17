import 'package:equatable/equatable.dart';

class Restaurant extends Equatable {
  final int id;
  final DateTime createdAt;
  final String name;
  final String image;
  final int time;

  const Restaurant({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.image,
    required this.time,
  });

  @override
  List<Object?> get props => [id, createdAt, name, image, time];
}
