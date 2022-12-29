import 'package:flutter/material.dart';
import 'package:masterclass_app/view/home/components/components.dart';

class ExerciceCategory extends StatelessWidget {
  ExerciceCategory({
    Key? key,
  }) : super(key: key);

  var text =
      "O Lorem Ipsum é um texto modelo da indústria tipográfica e de impressão. O Lorem Ipsum tem vindo a ser o texto padrão usado por estas indústrias desde o ano de 1500, quando uma misturou os caracteres de um texto para criar um espécime de livro. Este texto não só sobreviveu 5 séculos, ";

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MyCard(
          category: "Animações",
          svgImage: "assets/images/home/Icon awesome-running.svg",
          amountExercices: 3,
          description: text,
        ),
        const SizedBox(
          height: 16,
        ),
        MyCard(
          category: "Leitura de Mockup",
          svgImage: "assets/images/home/Icon awesome-glasses.svg",
          amountExercices: 3,
          description: text,
        ),
        const SizedBox(
          height: 16,
        ),
        MyCard(
          category: "Playground",
          svgImage: "assets/images/home/Icon material-toys.svg",
          amountExercices: 3,
          description: text,
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
