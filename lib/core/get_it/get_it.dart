import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:task/core/service/supabase/auth/supabase_services_impl.dart';

import '../helpers/cache_helper.dart';
import '../helpers/connectivity_controller.dart';

final getIt = GetIt.instance;
void setupServise() {
  ///AuthService
  getIt.registerLazySingleton<ConnectivityController>(
    () => ConnectivityController.instance,
  );
  getIt.registerLazySingleton(() => HiveInterface);
  getIt.registerLazySingleton(() => FlutterSecureStorage());

  getIt.registerLazySingleton(() => SecureCacheHelper(getIt()));
  getIt.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);
  getIt.registerLazySingleton<SupabaseService>(() => SupabaseService(getIt()));
}
