import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/util/constants.dart';

class ContainerOne extends StatefulWidget {
  const ContainerOne({super.key});

  @override
  State<ContainerOne> createState() => _ContainerOneState();
}

class _ContainerOneState extends State<ContainerOne> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: buildDesktopContainerOne,
      // mobile: ,
    );
  }
}

Widget buildDesktopContainerOne(BuildContext context) {
  return Row(
    children: [
      Column(children: <Widget>[
        Text(" Track your\n Expenses to\n Save Money",
            style: TextStyle(
              fontSize: w! / 20,
              fontWeight: FontWeight.bold,
              height: 1.2,
            )),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Helps you to organize your income and expenses",
          style: TextStyle(color: Color(0xFFBDBDBD), fontSize: 18),
        ),
        Row(
          children: [],
        )
      ])
    ],
  );
}
