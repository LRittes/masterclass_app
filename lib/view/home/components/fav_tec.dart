import 'package:flutter/material.dart';

Widget favTec(List<Widget> tecs) {
  return Builder(
    builder: (context) {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        height: 100,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tecnologias Fávoritas",
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: ListView.separated(
                  itemCount: tecs.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 12,
                      ),
                  itemBuilder: (c, i) {
                    return tecs[i];
                  }),
            )
          ],
        ),
      );
    },
  );
}
