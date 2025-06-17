import 'dart:developer';

import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/error/error_handler_supabase.dart';
import '../../../../core/helpers/return_response_service.dart';
import '../models/response_home_model.dart';

abstract class HomeRemoteDataSource {
  Future<ResponseService<ResponseHomeModel>> getHomeData();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final SupabaseClient supabase;
  HomeRemoteDataSourceImpl({required this.supabase});

  @override
  Future<ResponseService<ResponseHomeModel>> getHomeData() async {
    try {
      final responses = await Future.wait([
        supabase.from('restaurants_nearby').select(),
        supabase.from('service').select(),
        supabase.from('posters').select(),
      ]);
      return ResponseService(
        true,
        'Home data fetched successfully',
        ResponseHomeModel.fromMap({
          'restaurants_nearby': responses[0],
          'service': responses[1],
          'posters': responses[2],
        }),
      );
    } catch (e) {
      log("failer${e.toString()}");
      return ResponseService(false, ErrorHandlerSupabase.getErrorMessage(e));
    }
  }
}
