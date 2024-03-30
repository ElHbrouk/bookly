import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/tuils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          AssetsData.logo,
          width: MediaQuery.sizeOf(context).width * 0.7,
        ),
        Text(textAlign: TextAlign.center, 'read free books'),
      ],
    );
  }
}
