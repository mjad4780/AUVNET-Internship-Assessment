import 'package:dartz/dartz.dart';
import 'package:task/core/constants/const.dart';
import 'package:task/core/helpers/cache_helper.dart';

import '../../../../core/error/error_handler_supabase.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/get_it/get_it.dart';
import '../../../../core/helpers/connectivity_controller.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';

import '../../domain/entities/user_entity.dart';
import '../models/user_model.dart';

/// Handles authentication logic.
/// - Uses remote data source.
/// - Checks connectivity.
/// - Caches user ID after sign-in.
/// - Handles errors.
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, UserEntity>> signIn(
    String email,
    String password,
  ) async {
    if (!getIt<ConnectivityController>().isConnected.value) {
      return Left(ServerFailure('No internet connection'));
    }

    try {
      final UserModel userModel = await remoteDataSource.signIn(
        email,
        password,
      );
      await getIt<CacheHelper>().saveString(
        key: Constants.keyLogin,
        value: userModel.id,
      );
      return Right(userModel);
    } catch (e) {
      return Left(ServerFailure(ErrorHandlerSupabase.getErrorMessage(e)));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signUp(
    String email,
    String password,
  ) async {
    try {
      if (!getIt<ConnectivityController>().isConnected.value) {
        return Left(ServerFailure('No internet connection'));
      }

      final UserModel userModel = await remoteDataSource.signUp(
        email,
        password,
      );
      return Right(userModel);
    } catch (e) {
      return Left(ServerFailure(ErrorHandlerSupabase.getErrorMessage(e)));
    }
  }
}
