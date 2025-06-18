import 'package:task/core/Router/route_string.dart';

String isLoggedInUser = StringRoute.onBoarding;

class Constants {
  //names box cache
  static const String homeDataBox = 'home_data';
  static const String restaurantsBox = 'restaurants';
  static const String servicesBox = 'services';
  static const String postersBox = 'posters';
  static const Duration cacheExpiration = Duration(minutes: 15);

  //name key cache
  static const String homeDataKey = 'home_data_key';
  static const String homeDataTimestamp = 'home_data_timestamp';
  //
  static const String keyOnbording = 'keyOnbording';
  static const String keyLogin = 'keyLogin';
}
