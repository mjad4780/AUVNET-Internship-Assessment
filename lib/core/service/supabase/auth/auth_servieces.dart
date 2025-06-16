// import 'dart:developer';
// import 'dart:io';

// import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:task/core/helpers/return_response_service.dart';
// import 'package:task/utility/reqest_body.dart';

// import 'supabase_services_impl.dart';

// class AuthService {
//   final SupabaseService _supabaseService;

//   AuthService(this._supabaseService);

//   Future<ResponseService> register(ReqestBody body) async {
//     try {
//       AuthResponse response = await _supabaseService.signUp(body);
//       log('xception${response.session?.accessToken.toString()}');
//       if (response.user?.email == null) {
//         log('ption${response.user?.email.toString()}');

//         return ResponseService(false, ' Failer Account   ');
//       } else {
//         log('ptionddddd${response.user?.email.toString()}');

//         return ResponseService(
//           true,
//           'Account created successfully please confirm your signUp',
//         );
//       }
//     } catch (e) {
//       if (e is AuthException) {
//         log('AuthException${e.message}');
//         return ResponseService(false, e.message);
//       } else {
//         log('Exception${e.toString()}');

//         return ResponseService(false, e.toString());
//       }
//     }
//   }

//   Future<ResponseService> login(String email, String password) async {
//     try {
//       final response = await _supabaseService.signInWithEmail(email, password);

//       getIt<CacheHelper>().saveData(key: Keys.isLoggedIn, value: true);
//       getIt<CacheHelper>().saveData(key: Keys.loginMethod, value: "Email");
//       getIt<CacheHelper>().saveData(key: Keys.loginEmail, value: email);
//       getIt<CacheHelper>().saveData(key: Keys.password, value: password);
//       getIt<CacheHelper>().saveData(key: Keys.userId, value: response.user?.id);

//       return ResponseService(
//         true,
//         'Logged in successfully',
//       ); //  {"result": true, "message": "Logged in successfully"};
//     } catch (e) {
//       if (e is AuthException) {
//         return ResponseService(false, e.message);
//       } else {
//         return ResponseService(false, e.toString());
//       }
//     }
//   }
// }
