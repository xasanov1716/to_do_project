import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatefulWidget {
  const CustomText({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 335.w,
      child: TextField(
        textAlign: TextAlign.start,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: "salom",
          hintStyle: const TextStyle(fontSize: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          contentPadding: const EdgeInsets.all(16),
        ),
      ),
    );
  }
}
