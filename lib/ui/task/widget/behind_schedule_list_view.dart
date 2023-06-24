import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_project/utils/app_colors.dart';

class BehindSchedule extends StatelessWidget {
  const BehindSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Nothing to show here',style: TextStyle(
        color: AppColors.C_202D41.withOpacity(0.5),
        fontSize: 14.sp,
      ),),
    );
  }
}
