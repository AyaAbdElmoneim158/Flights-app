// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../core/utils/constants/images.dart';

class HelperCardModel {
  final String text;
  final String image;
  HelperCardModel({
    required this.text,
    required this.image,
  });

  static List<HelperCardModel> helperCards = [
    HelperCardModel(
        text: "Why are the airplanes white?", image: AppImages.helperInfo),
    HelperCardModel(
        text: "5 interesting facts about flying", image: AppImages.helperInfo),
    HelperCardModel(
        text: "We lose a lot of water during a flight",
        image: AppImages.helperInfo),
    HelperCardModel(
        text: "Why do pilots on the same flight eat different food?",
        image: AppImages.helperInfo),
  ];
}
