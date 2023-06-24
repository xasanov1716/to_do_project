import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_colors.dart';

class Upcoming extends StatelessWidget {
  const Upcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 39.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('You have no schedule yet. Click on + to create a new Task',textAlign: TextAlign.center,style: TextStyle(
            color: AppColors.C_202D41.withOpacity(0.5),
            fontSize: 14.sp,
          ),),
        ],
      ),
    );
  }
}
