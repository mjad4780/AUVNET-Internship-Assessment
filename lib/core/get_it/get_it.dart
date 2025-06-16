import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:task/core/service/supabase/auth/supabase_services_impl.dart';

final getIt = GetIt.instance;
void setupServise() {
  ///AuthService

  getIt.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);
  getIt.registerLazySingleton<SupabaseService>(() => SupabaseService(getIt()));
}
