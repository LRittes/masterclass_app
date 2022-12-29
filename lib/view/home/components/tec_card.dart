import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass_app/shared/theme/themes.dart';
import 'package:masterclass_app/view/home/home_page.dart';

Widget tecnologicCard(String svgImage, String title) {
  return Builder(
    builder: (context) {
      return Container(
        height: 70,
        width: 60,
        decoration: BoxDecoration(
          color: context
                      .findAncestorWidgetOfExactType<HomePage>()!
                      .themeManager
                      .themeMode ==
                  ThemeMode.light
              ? ice
              : blackLight,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              svgImage,
              height: 40,
              color: context
                          .findAncestorWidgetOfExactType<HomePage>()!
                          .themeManager
                          .themeMode ==
                      ThemeMode.light
                  ? blackLight
                  : ice,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
            )
          ],
        ),
      );
    },
  );
}
