import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_project/utils/app_colors.dart';

// ignore: must_be_immutable
class MyContainer extends StatelessWidget {
  MyContainer({super.key,required this.active});
  bool active;
  @override
  Widget build(BuildContext context) {
    return active ? Container(
      height: 2.h,
      width: 111.w,
      color: AppColors.C_086BFF,
    ):Container(
      height: 1.h,
      width: 111.w,
      color: AppColors.C_202D41.withOpacity(0.2),
    );
  }
}
