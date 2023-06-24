import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalTextFieled extends StatefulWidget {
  const GlobalTextFieled({
    Key? key,
    required this.text,
    required this.width,
  }) : super(key: key);
  final String text;
  final double width;
  @override
  State<GlobalTextFieled> createState() => _GlobalTextFieledState();
}
class _GlobalTextFieledState extends State<GlobalTextFieled> {
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:50.h,
      width: widget.width,
      child: TextField(
        textAlign: TextAlign.start,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: widget.text,

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
          suffixIcon: IconButton(
            // Icons.visibility_off
            icon: Icon(
                isPasswordVisible ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(() {
                isPasswordVisible = !isPasswordVisible;
              });
            },
          ),
        ),
        obscureText: !isPasswordVisible,
      ),
    );
  }
}
