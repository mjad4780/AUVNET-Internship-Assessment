import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/error/error_handler_supabase.dart';
import '../../../../core/helpers/return_response_service.dart';
import '../models/response_home_model.dart';

// Remote data source for the home page
abstract class HomeRemoteDataSource {
  // Fetch home page data
  Future<ResponseService<ResponseHomeModel>> getHomeData();
}

// Implementation of the remote data source for the home page
class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final SupabaseClient supabase;
  HomeRemoteDataSourceImpl({required this.supabase});

  @override
  // Fetch home page data from Supabase
  Future<ResponseService<ResponseHomeModel>> getHomeData() async {
    try {
      // Fetch data from the required tables
      final responses = await Future.wait([
        supabase.from('restaurants_nearby').select(),
        supabase.from('service').select(),
        supabase.from('posters').select(),
      ]);

      // Return data successfully
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
      // Return error message
      return ResponseService(false, ErrorHandlerSupabase.getErrorMessage(e));
    }
  }
}
