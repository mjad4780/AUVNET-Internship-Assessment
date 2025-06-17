import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/entities/user_entity.dart';
import '../../domain/usecases/auth_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUseCase _authUseCase;

  AuthBloc(this._authUseCase) : super(AuthInitial()) {
    on<SignInEvent>(_onSignInEvent);
    on<SignUpEvent>(_onSignUpEvent);
  }

  Future<void> _onSignInEvent(
    SignInEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(SignInLoading());
    final result = await _authUseCase.signIn(event.email, event.password);
    result.fold(
      (failure) => emit(SignInError(message: failure.message)),
      (user) => emit(SignInSuccess(user: user)),
    );
  }

  Future<void> _onSignUpEvent(
    SignUpEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(SignUpLoading());
    final result = await _authUseCase.signUp(event.email, event.password);
    result.fold(
      (failure) => emit(SignUpError(message: failure.message)),
      (user) => emit(SignUpSuccess(user: user)),
    );
  }
}
