import 'dart:io';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:task/utility/reqest_body.dart';

abstract class ISupabaseService {
  Future<AuthResponse> signUp(ReqestBody body);
  Future<AuthResponse> signInWithEmail(ReqestBody body);
}
