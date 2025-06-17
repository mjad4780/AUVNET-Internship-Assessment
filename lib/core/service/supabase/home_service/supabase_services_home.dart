import 'dart:developer';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:task/core/error/error_handler_supabase.dart';
import 'package:task/core/helpers/return_response_service.dart';

import '../../../../features/home/data/models/response_home_model.dart';

class SupabaseServiceHome {
  final SupabaseClient supabase;
  SupabaseServiceHome(this.supabase);

  Future<ResponseService<ResponseHomeModel>> getHomeData() async {
    try {
      final responses = await Future.wait([
        supabase.from('restaurants_nearby').select(),
        supabase.from('service').select(),
        supabase.from('posters').select(),
      ]);
      return ResponseService(
        true,
        '',
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
