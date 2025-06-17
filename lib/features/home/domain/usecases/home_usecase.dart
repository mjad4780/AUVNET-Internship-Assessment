import 'package:task/core/error/failures.dart';
import 'package:task/features/home/domain/entities/home_entity.dart';

import '../repositories/home_repository.dart';

import 'package:dartz/dartz.dart';

class HomeUseCase {
  final HomeRepository repository;

  HomeUseCase(this.repository);

  Future<Either<Failure, HomeEntity>> call() async {
    return await repository.getHomeData();
  }
}
