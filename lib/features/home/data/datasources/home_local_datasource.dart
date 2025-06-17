import 'dart:nativewrappers/_internal/vm/lib/developer.dart';

import '../../../../core/constants/const.dart';
import '../../../../core/helpers/return_response_service.dart';
import '../../../../core/service/cache/hive_service.dart';
import '../models/response_home_model.dart';

abstract class HomeLocalDataSource {
  Future<ResponseService<ResponseHomeModel?>> getCachedHomeData();
  Future<ResponseService> cacheHomeData(ResponseHomeModel? homeData);
  Future<void> clearCache();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  Future<ResponseService<ResponseHomeModel?>> getCachedHomeData() async {
    try {
      final cachedData = HiveService.getDataFromCache<ResponseHomeModel>(
        Constants.homeDataBox,
        Constants.homeDataKey,
      );

      if (cachedData != null) {
        return ResponseService(true, '', cachedData);
      }
      return ResponseService(false, 'No Data');
    } catch (e) {
      log('messageeeeeeeeeeeee${e.toString()}');
      return ResponseService(false, e.toString());
    }
  }

  @override
  Future<ResponseService> cacheHomeData(ResponseHomeModel? homeData) async {
    try {
      if (homeData != null) {
        await HiveService.addDataToCache<ResponseHomeModel>(
          Constants.homeDataBox,
          Constants.homeDataKey,
          homeData,
        );
        return ResponseService(true, '');
      } else {
        return ResponseService(false, 'No Data');
      }
    } catch (e) {
      return ResponseService(false, e.toString());

      // Handle caching error silently
    }
  }

  @override
  Future<void> clearCache() async {
    await HiveService.clearAllCache();
  }
}
