import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass_app/shared/theme/theme_manager.dart';

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
            color: themeManager.svgColor(themeManager, 0, currentPage),
            height: 20,
          ),
          label: 'Atividades',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/home/Icon awesome-github.svg',
            color: themeManager.svgColor(themeManager, 1, currentPage),
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
