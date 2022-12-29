import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass_app/shared/theme/themes.dart';
import 'package:masterclass_app/view/home/home_page.dart';

Widget cardABoutDev() {
  return Builder(builder: (context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 12,
      ),
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
        children: [
          SizedBox(
            height: 70,
            width: 70,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset("assets/images/home/profile_img.jpg"),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "Leandro Ribeiro Rittes",
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            width: 250,
            child: Text(
              "I am a Computer Science student at the State University of Santa Catarina and Mobile Software Engineer.",
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 10),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/about_dev/Icon ionic-logo-whatsapp.svg",
                height: 18,
                color: context
                            .findAncestorWidgetOfExactType<HomePage>()!
                            .themeManager
                            .themeMode ==
                        ThemeMode.light
                    ? blackLight
                    : ice,
              ),
              const SizedBox(
                width: 16,
              ),
              SvgPicture.asset(
                "assets/images/about_dev/Icon awesome-github-alt.svg",
                height: 18,
                color: context
                            .findAncestorWidgetOfExactType<HomePage>()!
                            .themeManager
                            .themeMode ==
                        ThemeMode.light
                    ? blackLight
                    : ice,
              ),
              const SizedBox(
                width: 18,
              ),
              SvgPicture.asset(
                "assets/images/about_dev/Icon awesome-instagram.svg",
                height: 18,
                color: context
                            .findAncestorWidgetOfExactType<HomePage>()!
                            .themeManager
                            .themeMode ==
                        ThemeMode.light
                    ? blackLight
                    : ice,
              ),
              const SizedBox(
                width: 18,
              ),
              SvgPicture.asset(
                "assets/images/about_dev/Icon awesome-facebook-f.svg",
                height: 18,
                color: context
                            .findAncestorWidgetOfExactType<HomePage>()!
                            .themeManager
                            .themeMode ==
                        ThemeMode.light
                    ? blackLight
                    : ice,
              ),
            ],
          )
        ],
      ),
    );
  });
}
