import 'package:flutter/material.dart';
import 'package:web_app/pages/container/container_one.dart';

import 'package:web_app/widgets/navbar.dart';

import '../util/constants.dart';
import 'container/container_two.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [NavBar(), ContainerOne(), ContainerTwo()],
        ),
      ),
    ));
  }
}
