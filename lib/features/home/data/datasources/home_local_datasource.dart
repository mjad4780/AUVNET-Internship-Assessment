import '../../../../core/constants/const.dart';
import '../../../../core/helpers/return_response_service.dart';
import '../../../../core/helpers/hive_service.dart';
import '../models/response_home_model.dart';

// Local data source for home page caching
abstract class HomeLocalDataSource {
  // Get home page data from cache
  Future<ResponseService<ResponseHomeModel?>> getCachedHomeData();
  // Save home page data to cache
  Future<ResponseService> cacheHomeData(ResponseHomeModel? homeData);
  // Clear cache
  Future<void> clearCache();
}

// Implementation of local data source
class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  // Get home page data from cache
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
      return ResponseService(false, e.toString());
    }
  }

  @override
  // Save home page data to cache
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
    }
  }

  @override
  // Clear cache
  Future<void> clearCache() async {
    await HiveService.clearAllCache();
  }
}
