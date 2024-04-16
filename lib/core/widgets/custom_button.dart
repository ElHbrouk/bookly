import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonName,
    this.onPressed,
    required this.backgroundColor,
    this.textStyle,
    this.borderRadius,
  });
  final String buttonName;
  final void Function()? onPressed;
  final Color backgroundColor;
  final TextStyle? textStyle;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            )),
        child: Text(
          buttonName,
          style: textStyle,
        ),
      ),
    );
  }
}
