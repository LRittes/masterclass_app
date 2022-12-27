import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass_app/shared/theme/themes.dart';
import 'package:masterclass_app/view/home/home_page.dart';

class MyCard extends StatelessWidget {
  final int amountExercices;
  final String svgImage;
  final String category;
  final String description;
  final double textSize;

  const MyCard({
    super.key,
    required this.amountExercices,
    required this.svgImage,
    required this.category,
    required this.description,
    this.textSize = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: context
                    .findAncestorWidgetOfExactType<HomePage>()!
                    .themeManager
                    .themeMode ==
                ThemeMode.light
            ? ice
            : blackLight,
        borderRadius: const BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: darkBlue,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      svgImage,
                      color: context
                                  .findAncestorWidgetOfExactType<HomePage>()!
                                  .themeManager
                                  .themeMode ==
                              ThemeMode.light
                          ? whiteLight
                          : blackLight,
                      height: 18,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    category,
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          fontSize: textSize,
                        ),
                  ),
                ],
              ),
              RichText(
                text: TextSpan(
                  text: 'Exercicio ',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                  children: [
                    TextSpan(text: amountExercices.toString()),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 50,
            child: Text(description),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'assets/images/home/Icon awesome-github.svg',
                      color: context
                                  .findAncestorWidgetOfExactType<HomePage>()!
                                  .themeManager
                                  .themeMode ==
                              ThemeMode.light
                          ? blackLight
                          : whiteLight,
                      height: 18,
                    ),
                    Text(
                      'Acessar código fonte',
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontSize: 8,
                          ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
                child: const Text("ver mais"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
