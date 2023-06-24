import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:to_do_project/utils/app_images.dart';
class TodoLogo extends StatelessWidget {
  const TodoLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Container(
      height: height*(50/812).h,
      width: width*(107.45).w,
      child: Row(
        children: [
          SvgPicture.asset(AppImages.galichka),
        ],
      ),
    );
  }
}
