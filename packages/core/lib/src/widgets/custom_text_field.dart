import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final Widget? prefixIcon;
  final TextInputType keyboardType;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? containerPadding;
  final BorderRadius? borderRadius;
  final Color? shadowColor;
  final Color? backgroundColor;
  final TextStyle? hintStyle;
  final double? elevation;

  const CustomTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.onChanged,
    this.onSubmitted,
    this.prefixIcon,
    this.keyboardType = TextInputType.text,
    this.contentPadding,
    this.containerPadding,
    this.borderRadius,
    this.shadowColor,
    this.backgroundColor = Colors.white,
    this.hintStyle,
    this.elevation = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: containerPadding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius ?? BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.circular(12),
        child: TextField(
          controller: controller,
          onChanged: onChanged,
          onSubmitted: onSubmitted,
          keyboardType: keyboardType,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Theme.of(context).primaryColor),
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: prefixIcon,
            border: InputBorder.none,
            contentPadding:
                contentPadding ?? const EdgeInsets.symmetric(vertical: 15),
            hintStyle: hintStyle,
          ),
        ),
      ),
    );
  }
}
