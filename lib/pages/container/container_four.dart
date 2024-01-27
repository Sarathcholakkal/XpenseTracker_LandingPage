import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/util/app_colors.dart';
import 'package:web_app/util/constants.dart';
import 'package:web_app/widgets/common_contaainer.dart';

import '../../util/image.dart';

class ContainerFour extends StatefulWidget {
  const ContainerFour({super.key});

  @override
  State<ContainerFour> createState() => _ContainerFourState();
}

class _ContainerFourState extends State<ContainerFour> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: buildDesktop,
      // mobile: ,
    );
  }
}
//============desktop======================//

Widget buildDesktop(BuildContext context) {
  const subText =
      "Tellus lacus morbi sagittis lacus in. Amet nisl at\nmauris enim accumsan nisi, tincidunt vel. Enim\nipsum, amet quis ullamcorper eget ut.";
  return CommonContainer(
      heading: "free some cost",
      mainHeading: "Save cost\nfor you and\nfamily",
      subHeading: subText,
      image: ilustration3,
      imageLeft: true);
}

//================,