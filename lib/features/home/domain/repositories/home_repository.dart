import 'package:dartz/dartz.dart';
import 'package:task/core/error/failures.dart';

import '../entities/home_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeEntity>> getHomeData();
}
