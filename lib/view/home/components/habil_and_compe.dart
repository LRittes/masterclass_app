import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/theme/themes.dart';
import 'package:masterclass_app/view/home/components/exp_Indicator.dart';
import 'package:masterclass_app/view/home/home_page.dart';

Widget habilitiesAndCompe() {
  return Builder(builder: (context) {
    return Container(
      padding: const EdgeInsets.all(12),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Habilidades e Competências",
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
          ),
          const SizedBox(
            height: 8,
          ),
          expIndicator("flutter", 0.3),
          expIndicator("React", 0.1),
          expIndicator("Git", 0.3),
          expIndicator("Rust", 0.03),
        ],
      ),
    );
  });
}
