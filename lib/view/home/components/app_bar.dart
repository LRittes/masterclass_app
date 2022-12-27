import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass_app/view/home/components/logo_description.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
    required this.toggleTheme,
  }) : super(key: key);

  final Function toggleTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const LogoDescription(),
        IconButton(
          onPressed: () => toggleTheme(),
          icon: SvgPicture.asset(
            'assets/images/home/Icon awesome-moon.svg',
            color: Theme.of(context).iconTheme.color,
            height: 20,
          ),
          splashRadius: 1,
        )
      ],
    );
  }
}
