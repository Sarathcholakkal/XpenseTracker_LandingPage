import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/util/app_colors.dart';
import 'package:web_app/util/style.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
        mobile: buildMobileNavBar, desktop: buildDesktopNavBar);
  }

  //? ===========widjet===================================================================================================================//

  //============Mobile============//
  Widget buildMobileNavBar(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildNavLogo(),
              const Text("Pense",
                  style: TextStyle(
                    color: Colors.black,
                  ))
            ],
          )
          // Container(height: 10, width: 10, color: Colors.red)
        ],
      ),
    );
  }

  // ============Desktop===========//
  Widget buildDesktopNavBar(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        // Container(height: 10, width: 10, color: Colors.red),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildNavLogo(),
            const Text(
              "Pense",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Row(
          children: [
            buildNavButton('Features'),
            buildNavButton('About us'),
            buildNavButton('Pricing'),
            buildNavButton('Feedback'),
          ],
        ),
        OutlinedButton(
          onPressed: () {},
          // Provide the function to execute when pressed
          style: buttonStyle,
          child: Text('Request a demo',
              style: TextStyle(color: AppColors.primary)),
        )
      ]),
    );
  }

  //===============navButton=====================//
  Widget buildNavButton(String text) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
            ),
          )),
    );
  }

  //==============navLogo============//
  Widget buildNavLogo() {
    return Container(
      width: 50,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/logo.png'),
        ),
      ),
    );
  }
}
