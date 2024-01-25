import 'package:flutter/material.dart';

import 'responsive.dart';

class ResponsiveTest extends StatelessWidget {
  const ResponsiveTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(
        color: Colors.blue,
        child: const Center(
          child: Text(
            "mobile",
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
      tablet: Container(
        color: Colors.yellowAccent,
        child: const Center(
          child: Text(
            "tab",
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
      desktop: Container(
        color: Colors.green,
        child: const Center(
          child: Text(
            "desktop",
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
