import 'package:hive_flutter/hive_flutter.dart';
import 'package:task/core/constants/const.dart';

import '../../features/home/data/models/poster_model.dart';
import '../../features/home/data/models/response_home_model.dart';
import '../../features/home/data/models/restaurant_model.dart';
import '../../features/home/data/models/service_model.dart';

class HiveService {
  static Future<void> initHive() async {
    await Hive.initFlutter();

    // Register adapters (register only if not registered)
    if (!Hive.isAdapterRegistered(RestaurantModelAdapter().typeId)) {
      Hive.registerAdapter(RestaurantModelAdapter());
    }
    if (!Hive.isAdapterRegistered(ServiceModelAdapter().typeId)) {
      Hive.registerAdapter(ServiceModelAdapter());
    }
    if (!Hive.isAdapterRegistered(PosterModelAdapter().typeId)) {
      Hive.registerAdapter(PosterModelAdapter());
    }
    if (!Hive.isAdapterRegistered(ResponseHomeModelAdapter().typeId)) {
      Hive.registerAdapter(ResponseHomeModelAdapter());
    }

    // Open boxes only if not already open
    if (!Hive.isBoxOpen(Constants.homeDataBox)) {
      await Hive.openBox<ResponseHomeModel>(Constants.homeDataBox);
    }
  }

  // Generic method to add data to any box
  static Future<void> addDataToCache<T>(
    String boxName,
    String key,
    T data,
  ) async {
    final box = Hive.box<T>(boxName);
    await box.put(key, data);
  }

  // Generic method to get data from any box
  static T? getDataFromCache<T>(String boxName, String key) {
    final box = Hive.box<T>(boxName);
    return box.get(key);
  }

  static Future<void> clearAllCache() async {
    //  await Hive.box(Constants.homeDataBox).;

    await Hive.box<ResponseHomeModel>(Constants.homeDataBox).clear();
  }
}
