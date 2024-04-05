import 'package:flutter/material.dart';

import '../utils/constants/styles.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.font20Gray800Bold,
    );
  }
}
