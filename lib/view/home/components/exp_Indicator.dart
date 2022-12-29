import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/theme/themes.dart';

Widget expIndicator(String tecTitle, double exp) {
  return Builder(builder: (context) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          child: Text(
            tecTitle,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: LinearProgressIndicator(
              backgroundColor: black,
              color: darkBlue,
              minHeight: 10,
              value: exp,
            ),
          ),
        )
      ],
    );
  });
}
