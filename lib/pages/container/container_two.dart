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
    // margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
    child: Column(
      // changed row to column
      children: [
        Container(
          height: w! / 1.5,
          width: w! / 1.5,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    ilustration1,
                  ),
                  fit: BoxFit.contain)),
        ),
        const SizedBox(
          height: 20,
        ),

        //=================

        Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Track your\nExpenses to\nSave Money",
                    style: TextStyle(
                      fontSize: w! / 15,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    )),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Helps you to organize your \nincome and expenses",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFFBDBDBD), fontSize: 13),
                ),
                const SizedBox(
                  height: 15,
                ),

                //! remove row  and expanded, reduce font size and allign center, reduce margin  for mobile views----------------------------------------------------
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      constraints:
                          const BoxConstraints.tightFor(width: 160, height: 45),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        //..................
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.primary),
                        )
                        //.......
                        ,
                        icon: const Icon(Icons.arrow_downward_outlined),
                        label: Text(
                          "Try free demo",
                          style: TextStyle(
                            color: AppColors.whiteText,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //....................
                const SizedBox(
                  width: 10,
                  height: 10,
                ),
                Text(
                  '  — Web, iOs and Android',
                  style: TextStyle(color: AppColors.greyText, fontSize: 13),
                )
              ]),
        ),
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
