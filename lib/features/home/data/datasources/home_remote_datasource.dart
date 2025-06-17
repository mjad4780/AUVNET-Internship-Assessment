import 'package:connectivity_plus/connectivity_plus.dart';
import '../../../../core/helpers/return_response_service.dart';
import '../../../../core/service/supabase/home_service/supabase_services_home.dart';
import '../models/response_home_model.dart';

abstract class HomeRemoteDataSource {
  Future<ResponseService<ResponseHomeModel>> getHomeData();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final SupabaseServiceHome supabaseService;
  final Connectivity connectivity;

  HomeRemoteDataSourceImpl({
    required this.supabaseService,
    required this.connectivity,
  });

  @override
  Future<ResponseService<ResponseHomeModel>> getHomeData() async {
    final response = await supabaseService.getHomeData();

    return response;
  }
}
