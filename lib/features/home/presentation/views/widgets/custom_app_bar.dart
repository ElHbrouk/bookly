import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        children: [
          SvgPicture.asset(
            AssetsData.logo,
            width: MediaQuery.sizeOf(context).width * .3,
          ),
          const Spacer(),
          IconButton(
            iconSize: 28,
            onPressed: () {
              GoRouter.of(context).push(AppRouter.ksearchView);
            },
            icon: const Icon(FontAwesomeIcons.magnifyingGlass,size: 20,),
          ),
        ],
      ),
    );
  }
}
