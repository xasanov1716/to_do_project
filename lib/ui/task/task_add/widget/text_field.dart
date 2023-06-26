import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_project/utils/app_colors.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  MyTextField({
    super.key,
    required this.hintText,
  });
  String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.C_202D41.withOpacity(0.7),
          fontFamily: 'GalanoGrotesque-Medium',
          fontSize: 12.sp,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10),),
          borderSide: BorderSide(
            color: AppColors.C_202D41.withOpacity(0.7),
          ),
        ),
        // disabledBorder: OutlineInputBorder(
        //   borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10),),
        //   borderSide: BorderSide(
        //     width: 0.3,
        //     color: AppColors.C_202D41.withOpacity(0.7),
        //   ),
        // ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10),),
        //   borderSide: BorderSide(
        //     width: 0.3,
        //     color: AppColors.C_202D41.withOpacity(0.7),
        //   ),
        // ),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10),),
          borderSide: BorderSide(
            width: 0.3,
            color: AppColors.C_202D41.withOpacity(0.7),
          ),
        ),
      ),
    );
  }
}
