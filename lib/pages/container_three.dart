import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:web_app/widgets/common_contaainer.dart';

import '../../util/image.dart';

class ContainerThree extends StatefulWidget {
  const ContainerThree({super.key});

  @override
  State<ContainerThree> createState() => _ContainerThreeState();
}

class _ContainerThreeState extends State<ContainerThree> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: buildDesktop,
      mobile: buildMobile,
    );
  }
}

//============desktop======================//

Widget buildDesktop(BuildContext context) {
  const subText =
      "Tellus lacus morbi sagittis lacus in. Amet nisl at\nmauris enim accumsan nisi, tincidunt vel. Enim\nipsum, amet quis ullamcorper eget ut.";
  return buildCommonDesktop(
      heading: "Alwalys online",
      mainHeading: "Real-time support\nwith cloud",
      subHeading: subText,
      image: ilustration2);
}

// //================buildMobile=======================
Widget buildMobile(BuildContext context) {
  const subText =
      "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.";
  return buildCommonMobile(
      image: ilustration2,
      heading: "Alwalys online",
      mainHeading: "Real-time\nsupport\nwith cloud",
      subHeading: subText);
}
