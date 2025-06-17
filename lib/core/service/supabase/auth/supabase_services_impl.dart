import 'dart:io';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:task/reqest_body.dart';
import '../../../function/re_name_path_image.dart';
import 'supabase_services.dart';

class SupabaseService implements ISupabaseService {
  final SupabaseClient _client;
  SupabaseService(this._client);

  @override
  Future<AuthResponse> signUp(ReqestBody body) {
    return _client.auth.signUp(
      email: body.email.toLowerCase().trim(),
      password: body.password,
    );
  }

  @override
  Future<AuthResponse> signInWithEmail(ReqestBody body) {
    return _client.auth.signInWithPassword(
      email: body.email.toLowerCase().trim(),
      password: body.password,
    );
  }
}
