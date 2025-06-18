import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:task/features/home/data/datasources/home_local_datasource.dart';

import '../../features/auth/data/datasources/auth_remote_data_source_impl.dart';
import '../../features/auth/data/datasources/auth_remote_datasource.dart';
import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/auth/domain/usecases/auth_usecase.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../features/home/data/datasources/home_remote_datasource.dart';
import '../../features/home/data/repositories/home_repository_impl.dart';
import '../../features/home/domain/repositories/home_repository.dart';
import '../../features/home/domain/usecases/home_usecase.dart';
import '../../features/home/presentation/bloc/home_bloc.dart';
import '../helpers/cache_helper.dart';
import '../helpers/connectivity_controller.dart';

// Initialize the GetIt instance for dependency injection
final getIt = GetIt.instance;

/// Sets up all the services and dependencies for the app.
/// Registers singletons and factories for data sources, repositories, use cases, and blocs.
void setupServise() {
  // Connectivity controller singleton
  getIt.registerLazySingleton<ConnectivityController>(
    () => ConnectivityController.instance,
  );

  // Secure storage singleton
  getIt.registerLazySingleton(() => FlutterSecureStorage());

  // Cache helper singleton
  getIt.registerLazySingleton(() => CacheHelper(getIt()));

  // Supabase client singleton
  getIt.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);

  // Auth feature dependencies
  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(getIt()),
  );
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(remoteDataSource: getIt()),
  );
  getIt.registerLazySingleton<AuthUseCase>(() => AuthUseCase(getIt()));
  getIt.registerLazySingleton<AuthBloc>(() => AuthBloc(getIt()));

  // Home feature dependencies
  getIt.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(supabase: getIt()),
  );
  getIt.registerLazySingleton<HomeLocalDataSource>(
    () => HomeLocalDataSourceImpl(),
  );
  getIt.registerLazySingleton<HomeRepository>(
    () =>
        HomeRepositoryImpl(remoteDataSource: getIt(), localDataSource: getIt()),
  );
  getIt.registerLazySingleton<HomeUseCase>(() => HomeUseCase(getIt()));
  getIt.registerLazySingleton<HomeBloc>(() => HomeBloc(getHomeData: getIt()));
}
