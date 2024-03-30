import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/tuils/assets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          AssetsData.logo,
        ),
      ),
    );
  }
}
