import 'package:task/core/error/failures.dart';
import 'package:task/core/get_it/get_it.dart';
import 'package:task/core/helpers/connectivity_controller.dart';

import '../../domain/entities/home_entity.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/home_local_datasource.dart';
import '../datasources/home_remote_datasource.dart';

import 'package:dartz/dartz.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeLocalDataSource localDataSource;
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, HomeEntity>> getHomeData() async {
    if (!getIt<ConnectivityController>().isConnected.value) {
      final cachedData = await localDataSource.getCachedHomeData();
      if (cachedData.result == true) {
        return Right(cachedData.data!);
      } else {
        return Left(ServerFailure('No internet connection'));
      }
    } else {
      final response = await remoteDataSource.getHomeData();
      if (response.result == true) {
        await localDataSource.clearCache();
        await localDataSource.cacheHomeData(response.data);
        return Right(response.data!);
      } else {
        return Left(ServerFailure(response.messege));
      }
    }
  }
}
