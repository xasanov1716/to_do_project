// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../../utils/app_colors.dart';
// class SignUp1 extends StatelessWidget {
//   const SignUp1({Key? key, required this.onTap, required this.text,}) : super(key: key);
//   final VoidCallback onTap;
//   final String text;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 36.9.h,
//       width: 136.h,
//       child: Row(
//         children: [
//
//           ElevatedButton(
//             onPressed: onTap,
//             style: ElevatedButton.styleFrom(
//                 backgroundColor: AppColors.white
//             ),
//             child: Row(
//               children: [
//                 Image.asset('assets/images/google.png'),
//                 // SizedBox(width: 9.65.w,),
//                 Text(
//                   text,
//                   style: Theme.of(context).textTheme.titleSmall!.copyWith(
//                       fontSize: 16.sp,
//                       fontFamily: 'GalanoGrotesque-Medium',
//                       color: AppColors.black.withOpacity(0.5)),
//                 ),
//               ],
//             ),
//           ),
//           ElevatedButton(
//             onPressed: onTap,
//             style: ElevatedButton.styleFrom(
//                 backgroundColor: AppColors.white
//             ),
//             child: Row(
//               children: [
//                 Image.asset('assets/images/facebook.png'),
//                 // SizedBox(width: 9.65.w,),
//                 Text(
//                   text,
//                   style: Theme.of(context).textTheme.titleSmall!.copyWith(
//                       fontSize: 16.sp,
//                       fontFamily: 'GalanoGrotesque-Medium',
//                       color: AppColors.black.withOpacity(0.5)),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
