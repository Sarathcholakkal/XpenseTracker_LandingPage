import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/util/app_colors.dart';
import 'package:web_app/util/constants.dart';

import '../../util/image.dart';

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
      mobile: buildMobileContainerOne,
    );
  }
}
//=========================MOBILECONTAINE1=========================================

Widget buildMobileContainerOne(BuildContext context) {
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

Widget buildDesktopContainerOne(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
    child: Row(
      children: [
        Expanded(
          child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Track your\nExpenses to\nSave Money",
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
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        constraints: const BoxConstraints.tightFor(
                            width: 160, height: 45),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            print("hello");
                          },
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
                      //....................
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '  — Web, iOs and Android',
                        style:
                            TextStyle(color: AppColors.greyText, fontSize: 18),
                      )
                    ],
                  )
                ]),
          ),
        ),
        Expanded(
            child: Container(
          height: 530,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    ilustration1,
                  ),
                  fit: BoxFit.contain)),
        ))
      ],
    ),
  );
}
//======================DESKTOPCONAINER1 END==========================================
