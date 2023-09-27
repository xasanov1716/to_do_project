import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_project/utils/app_colors.dart';

class OnPressed extends StatelessWidget {
  const OnPressed({Key? key, required this.onTap, required this.text})
      : super(key: key);
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 335.w,
      decoration: BoxDecoration(
        color: AppColors.C_086BFF,
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
              fontFamily: 'GalanoGrotesque-Medium',
              color: AppColors.white),
        ),
      ),
    );
  }
}
