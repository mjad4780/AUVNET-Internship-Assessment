import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class AuthUseCase {
  final AuthRepository repository;

  AuthUseCase(this.repository);

  Future<Either<Failure, UserEntity>> signIn(String email, String password) {
    return repository.signIn(email, password);
  }

  Future<Either<Failure, UserEntity>> signUp(String email, String password) {
    return repository.signUp(email, password);
  }
}
