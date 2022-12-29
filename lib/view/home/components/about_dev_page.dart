import 'package:flutter/material.dart';
import 'package:masterclass_app/view/home/components/components.dart';

class AboutDevPage extends StatelessWidget {
  AboutDevPage({
    Key? key,
  }) : super(key: key);

  List<Widget> tecs = [
    tecnologicCard(
      "assets/images/about_dev/Icon simple-flutter.svg",
      "Flutter",
    ),
    tecnologicCard(
      "assets/images/about_dev/Icon simple-flutter.svg",
      "Flutter",
    ),
    tecnologicCard(
      "assets/images/about_dev/Icon simple-flutter.svg",
      "Flutter",
    ),
    tecnologicCard(
      "assets/images/about_dev/Icon simple-flutter.svg",
      "Flutter",
    ),
    tecnologicCard(
      "assets/images/about_dev/Icon simple-flutter.svg",
      "Flutter",
    ),
    tecnologicCard(
      "assets/images/about_dev/Icon simple-flutter.svg",
      "Flutter",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        cardABoutDev(),
        favTec(tecs),
        habilitiesAndCompe(),
      ],
    );
  }
}
