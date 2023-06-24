import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Email extends StatefulWidget {
  const Email({
    Key? key,
    required this.text,
    required this.width,
  }) : super(key: key);
  final String text;
  final double width;
  @override
  State<Email> createState() => _EmailState();
}
class _EmailState extends State<Email> {
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
        ),
      ),
    );
  }
}
