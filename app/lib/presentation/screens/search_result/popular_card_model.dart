// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../core/utils/constants/images.dart';

class PopularCardModel {
  final String text;
  final String image;
  PopularCardModel({
    required this.text,
    required this.image,
  });

  static List<PopularCardModel> popularCards = [
    PopularCardModel(
      text: "Extreme flight",
      image: AppImages.popular1,
    ),
    PopularCardModel(
      text: "Over the city",
      image: AppImages.popular2,
    ),
    PopularCardModel(
      text: "For two",
      image: AppImages.popular3,
    ),
  ];
}
