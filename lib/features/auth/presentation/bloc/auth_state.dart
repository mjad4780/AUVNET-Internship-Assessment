part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {}

final class SignInLoading extends AuthState {}

final class SignUpLoading extends AuthState {}

final class SignInSuccess extends AuthState {
  final UserEntity user;

  const SignInSuccess({required this.user});

  @override
  List<Object> get props => [user];
}

final class SignUpSuccess extends AuthState {
  final UserEntity user;

  const SignUpSuccess({required this.user});

  @override
  List<Object> get props => [user];
}

final class SignInError extends AuthState {
  final String message;

  const SignInError({required this.message});

  @override
  List<Object> get props => [message];
}

final class SignUpError extends AuthState {
  final String message;

  const SignUpError({required this.message});

  @override
  List<Object> get props => [message];
}
