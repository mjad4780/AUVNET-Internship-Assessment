import 'package:equatable/equatable.dart';

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
}
