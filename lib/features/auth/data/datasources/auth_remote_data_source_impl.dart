/// Implementation of [AuthRemoteDataSource] that interacts with Supabase for authentication.
///
/// This class provides methods to sign in and sign up users using Supabase authentication.
/// It returns a [UserModel] upon successful authentication.
///
/// - [signIn]: Signs in a user with the provided email and password.
/// - [signUp]: Registers a new user with the provided email and password.
///
/// Requires a [SupabaseClient] instance to perform authentication operations.
library;

import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/user_model.dart';
import 'auth_remote_datasource.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient _supabase;

  AuthRemoteDataSourceImpl(this._supabase);

  @override
  Future<UserModel> signIn(String email, String password) async {
    final response = await _supabase.auth.signInWithPassword(
      email: email,
      password: password,
    );

    return UserModel(id: response.user!.id, email: response.user!.email!);
  }

  @override
  Future<UserModel> signUp(String email, String password) async {
    final response = await _supabase.auth.signUp(
      email: email,
      password: password,
    );

    return UserModel(id: response.user!.id, email: response.user!.email!);
  }
}
