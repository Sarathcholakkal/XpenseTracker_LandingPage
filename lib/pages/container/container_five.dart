import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:web_app/widgets/common_contaainer.dart';

import '../../util/image.dart';

class ContainerFive extends StatefulWidget {
  const ContainerFive({super.key});

  @override
  State<ContainerFive> createState() => _ContainerFiveState();
}

class _ContainerFiveState extends State<ContainerFive> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(desktop: buildDesktop, mobile: buildMobile);
  }
}
//============desktop======================//

Widget buildDesktop(BuildContext context) {
  const subText =
      "Tellus lacus morbi sagittis lacus in. Amet nisl at\nmauris enim accumsan nisi, tincidunt vel. Enim\nipsum, amet quis ullamcorper eget ut.";
  return buildCommonDesktop(
      heading: "Use anytime",
      mainHeading: "Use anytime\nwhen you\nneed",
      subHeading: subText,
      image: ilustration4);
}

//================mobile ==============
Widget buildMobile(BuildContext context) {
  const subText =
      "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.";
  return buildCommonMobile(
      image: ilustration4,
      heading: "Use anytime",
      mainHeading: "Use anytime\nwhen you\nneed",
      subHeading: subText);
}
