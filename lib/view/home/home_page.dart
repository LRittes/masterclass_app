import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/theme/theme_manager.dart';
import 'package:masterclass_app/view/home/components/components.dart';

class HomePage extends StatefulWidget {
  final ThemeManager themeManager;
  const HomePage({
    super.key,
    required this.themeManager,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController pc;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: currentPage);
  }

  void setCurrentPage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    pc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              MyAppBar(
                toggleTheme: widget.themeManager.toggleTheme,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: PageView(
                    controller: pc,
                    onPageChanged: setCurrentPage,
                    children: [
                      ExerciceCategory(),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.blue,
                      ),
                      AboutDevPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: MyBottomNavigationBar(
          currentPage: currentPage,
          pageController: pc,
          themeManager: widget.themeManager,
        ));
  }
}
