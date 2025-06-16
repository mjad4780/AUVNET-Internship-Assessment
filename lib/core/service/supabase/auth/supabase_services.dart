import 'dart:io';

import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../future/auth/sign up/data/model/sign_up_reqest_body.dart';

abstract class ISupabaseService {
  Future<AuthResponse> signUp(SignUpReqestBody body);
  Future<AuthResponse> signInWithEmail(String email, String password);
}
