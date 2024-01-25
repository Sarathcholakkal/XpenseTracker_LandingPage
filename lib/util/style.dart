import 'package:flutter/material.dart';
import 'package:web_app/util/app_colors.dart';

ButtonStyle buttonStyle = ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.all(Colors.white),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
        side: BorderSide(
          color: AppColors.primary, //  border color
          width: 1.0, // Adjust border width
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(10)),
  ),
);

    //===============================================
    // BorderSide(color: AppColors.primary, width: 1)
