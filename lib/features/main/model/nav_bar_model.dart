import 'package:task/core/style/text_string.dart';

import 'package:task/utility/images_aseets.dart';

class ButtomNavBarModel {
  final String title;
  final String image;

  ButtomNavBarModel(this.title, this.image);
}

List<ButtomNavBarModel> navBar = [
  ButtomNavBarModel(AppTexts.home, Assets.nawels),
  ButtomNavBarModel(AppTexts.categories, Assets.categories),
  ButtomNavBarModel(AppTexts.deliver, Assets.delev),
  ButtomNavBarModel(AppTexts.cart, Assets.cart),
  ButtomNavBarModel(AppTexts.profile, Assets.persons),
];
