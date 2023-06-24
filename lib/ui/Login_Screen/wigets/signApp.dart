import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_colors.dart';
class SignUp extends StatelessWidget {
  const SignUp({Key? key, required this.onTap, }) : super(key: key);
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 175,
              child: ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.white
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/googlee.png'),
                    // SizedBox(width: 6.w),
                    Text(
                      "sign up with google",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: 11.sp,
                          fontFamily: 'GalanoGrotesque-Medium',
                          color: AppColors.black.withOpacity(0.5)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 10,),
            SizedBox(
              width: 199,
              child: ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.white
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/facebook.png',width: 20,),
                    // SizedBox(width: 9.65.w,),
                    Text(
                      "sign up with facebook",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: 11.sp,
                          fontFamily: 'GalanoGrotesque-Medium',
                          color: AppColors.black.withOpacity(0.5)),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ],
    );
  }
}
