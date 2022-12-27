import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass_app/shared/theme/theme_manager.dart';
import 'package:masterclass_app/shared/theme/themes.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({
    super.key,
    required this.currentPage,
    required this.pageController,
    required this.themeManager,
  });

  final int currentPage;
  final PageController pageController;
  final ThemeManager themeManager;

  Color svgColor(ThemeManager themeManager, int page) {
    if (themeManager.themeMode == ThemeMode.light) {
      if (currentPage == page) {
        return SVGThemeData.lightIsSelected.color;
      }
      return SVGThemeData.lightIsUnselected.color;
    }
    if (currentPage == page) {
      return SVGThemeData.darkIsSelected.color;
    }
    return SVGThemeData.darkIsUnselected.color;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentPage,
      onTap: (page) {
        pageController.animateToPage(
          page,
          duration: const Duration(milliseconds: 400),
          curve: Curves.ease,
        );
      },
      iconSize: 18,
      selectedFontSize: 12,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/home/Icon feather-target.svg',
            color: svgColor(themeManager, 0),
            height: 20,
          ),
          label: 'Atividades',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/home/Icon awesome-github.svg',
            color: svgColor(themeManager, 1),
            height: 20,
          ),
          label: 'Repositórios',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            size: 20,
          ),
          label: 'Sobre o Dev',
        ),
      ],
    );
  }
}
