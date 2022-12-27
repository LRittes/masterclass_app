import 'package:flutter/material.dart';

class LogoDescription extends StatelessWidget {
  const LogoDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/home/logo.png',
          height: 30,
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          children: [
            RichText(
              text: TextSpan(
                text: 'Atividades\n',
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                children: [
                  TextSpan(
                    text: 'Flutterando Masterclass',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
