import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/theme/theme_manager.dart';
import 'package:masterclass_app/view/home/components/app_bar.dart';
import 'package:masterclass_app/view/home/components/card.dart';
import 'package:masterclass_app/view/home/components/my_bottom_navigation_bar.dart';

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

  var text =
      "O Lorem Ipsum é um texto modelo da indústria tipográfica e de impressão. O Lorem Ipsum tem vindo a ser o texto padrão usado por estas indústrias desde o ano de 1500, quando uma misturou os caracteres de um texto para criar um espécime de livro. Este texto não só sobreviveu 5 séculos, ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              MyAppBar(toggleTheme: widget.themeManager.toggleTheme),
              Expanded(
                child: PageView(
                  controller: pc,
                  onPageChanged: setCurrentPage,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          MyCard(
                            category: "Animações",
                            svgImage:
                                "assets/images/home/Icon awesome-running.svg",
                            amountExercices: 3,
                            description: text,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          MyCard(
                            category: "Leitura de Mockup",
                            svgImage:
                                "assets/images/home/Icon awesome-glasses.svg",
                            amountExercices: 3,
                            description: text,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          MyCard(
                            category: "Playground",
                            svgImage:
                                "assets/images/home/Icon material-toys.svg",
                            amountExercices: 3,
                            description: text,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.blue,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.pink,
                    ),
                  ],
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
