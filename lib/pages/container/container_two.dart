import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/util/app_colors.dart';
import 'package:web_app/util/constants.dart';

import '../../util/image.dart';

class ContainerTwo extends StatefulWidget {
  const ContainerTwo({super.key});

  @override
  State<ContainerTwo> createState() => _State();
}

class _State extends State<ContainerTwo> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: buildDesktop,
      mobile: buildMobile,
    );
  }
}
//=========================MOBILECONTAINE1=========================================

Widget buildMobile(BuildContext context) {
  return Container(
    decoration: BoxDecoration(color: AppColors.primary),
    width: double.infinity,
    child: Column(
      children: [
        Container(
          padding:
              const EdgeInsets.only(top: 20, bottom: 0, right: 20, left: 20),
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(dashboardImage), fit: BoxFit.fill),
            ),
          ),
        ),
        Container(
          color: Colors.white,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCompanyLogo(logo: facebookLogo),
              height10,
              buildCompanyLogo(logo: googleLogo),
              height10,
              buildCompanyLogo(logo: cocaColaLogo),
              height10,
              buildCompanyLogo(logo: linkdinLogo),
              height10,
              buildCompanyLogo(logo: samsungLogo)
            ],
          ),
        )
      ],
    ),
  );
}

//============================DESKTOPCONAINER1=======================================

Widget buildDesktop(BuildContext context) {
  return Container(
    child: Column(
      children: [
        Container(
          height: 900,
          width: double.infinity,
          color: AppColors.primary,
          child: Column(
            children: [
              Expanded(
                  child: Stack(
                children: [
                  Positioned(
                      top: -20,
                      right: -20,
                      child: Container(
                        height: 320,
                        width: 320,
                        decoration: const BoxDecoration(
                            image:
                                DecorationImage(image: AssetImage(vectroOne))),
                      )),
                  Positioned(
                      bottom: -20,
                      left: -20,
                      child: Container(
                        height: 320,
                        width: 320,
                        decoration: const BoxDecoration(
                            image:
                                DecorationImage(image: AssetImage(vectroTwo))),
                      )),
                  Positioned(
                      left: 43,
                      right: 43,
                      bottom: 0,
                      child: Container(
                        width: double.infinity,
                        height: 712,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(dashboardImage))),
                      )),
                ],
              )),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 40),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildCompanyLogo(logo: facebookLogo),
                    buildCompanyLogo(logo: googleLogo),
                    buildCompanyLogo(logo: cocaColaLogo),
                    buildCompanyLogo(logo: linkdinLogo),
                    buildCompanyLogo(logo: samsungLogo)
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

//======================DESKTOPCONAINER1 END==========================================

//========================COMPANY LOGO WIDGET=========================

Widget buildCompanyLogo({required String logo}) {
  return Container(
    height: 36,
    width: 159,
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(logo), fit: BoxFit.contain)),
  );
}
//================================================================
