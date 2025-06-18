import 'package:task/core/style/text_string.dart';
import 'package:task/utility/images_aseets.dart';

class ShodtcutsModel {
  final String title;
  final String image;

  ShodtcutsModel(this.title, this.image);
}

List<ShodtcutsModel> imagesShotcuts = [
  ShodtcutsModel(AppTexts.giveBack, Assets.imagesGroup9),
  ShodtcutsModel(AppTexts.superSaver, Assets.imagesGroupo),
  ShodtcutsModel(AppTexts.bestSellers, Assets.imagesIcBaselineStar),
  ShodtcutsModel(AppTexts.mustTries, Assets.imagesGroup2),
  ShodtcutsModel(
    AppTexts.pastOrders,
    Assets.imagesIconParkSolidTransactionOrder,
  ),
];
