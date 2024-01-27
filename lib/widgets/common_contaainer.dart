import 'package:web_app/util/app_colors.dart';
import 'package:web_app/util/constants.dart';
import 'package:flutter/material.dart';

Widget CommonContainer(
    {required String heading,
    required String mainHeading,
    required String subHeading,
    required String image,
    bool imageLeft = false}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Row(
      children: [
        //=============child one ======================//
        imageLeft
            ? Expanded(
                child: Container(
                height: 530,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.contain),
                ),
              ))
            : const SizedBox(),
        //=============child two ======================//
        Expanded(
          child: Column(
            crossAxisAlignment:
                imageLeft ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                heading.toUpperCase(),
                style: TextStyle(
                  color: AppColors.greyText,
                  fontSize: 16,
                ),
              ),
              height10,
              Text(mainHeading,
                  textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                  style: TextStyle(
                    fontSize: w! / 15,
                    fontWeight: FontWeight.bold,
                    height: 1.1,
                  )),
              height10,
              Text(
                subHeading,
                textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                  color: AppColors.greyText,
                  fontSize: 16,
                ),
              ),
              height10,
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_outlined),
                  label: Text(
                    "Learn more",
                    style: TextStyle(color: AppColors.primary, fontSize: 18),
                  ))
            ],
          ),
        ),
        //===============child three===========================//
        imageLeft
            ? const SizedBox()
            : Expanded(
                child: Container(
                height: 530,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.contain),
                ),
              )),
      ],
    ),
  );
}
