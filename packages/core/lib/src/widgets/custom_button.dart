import 'package:flutter/material.dart';

enum ButtonVariant {
  primary,
  secondary,
  outline,
  text,
  white,
}

enum ButtonSize {
  small,
  medium,
  large,
}

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final String? text;
  final ButtonVariant variant;
  final ButtonSize size;
  final bool isLoading;
  final Widget? leadingIcon;
  final Color? customColor;
  final double? elevation;
  final double borderRadius;
  final EdgeInsetsGeometry? customPadding;
  final BorderSide? customBorder;

  const CustomButton({
    super.key,
    required this.onPressed,
    this.child,
    this.text,
    this.variant = ButtonVariant.primary,
    this.size = ButtonSize.medium,
    this.isLoading = false,
    this.leadingIcon,
    this.customColor,
    this.elevation,
    this.borderRadius = 12.0,
    this.customPadding,
    this.customBorder,
  }) : assert(child != null || text != null,
            'Either child or text must be provided');

  @override
  Widget build(BuildContext context) {
    // Define theme colors
    final ThemeData theme = Theme.of(context);
    final Color primaryColor = customColor ?? theme.primaryColor;
    final Color backgroundColor = _getBackgroundColor(primaryColor, theme);
    final Color foregroundColor = _getForegroundColor(primaryColor, theme);

    // Define padding based on size
    final EdgeInsetsGeometry padding = customPadding ?? _getPadding();

    // Define border
    final BorderSide borderSide = customBorder ?? _getBorderSide(primaryColor);

    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: borderSide,
        ),
        elevation: elevation ?? _getElevation(),
        shadowColor: variant == ButtonVariant.white
            ? Colors.black.withValues(alpha: 0.2)
            : null,
        disabledBackgroundColor: backgroundColor..withValues(alpha: 0.6),
        disabledForegroundColor: foregroundColor..withValues(alpha: 0.6),
      ),
      child: isLoading
          ? SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator(
                strokeWidth: 2.5,
                valueColor: AlwaysStoppedAnimation<Color>(_getLoadingColor()),
              ),
            )
          : _buildContent(),
    );
  }

  Color _getBackgroundColor(Color primaryColor, ThemeData theme) {
    switch (variant) {
      case ButtonVariant.primary:
        return primaryColor;
      case ButtonVariant.secondary:
        return theme.colorScheme.secondary;
      case ButtonVariant.outline:
        return Colors.transparent;
      case ButtonVariant.text:
        return Colors.transparent;
      case ButtonVariant.white:
        return Colors.white;
    }
  }

  Color _getForegroundColor(Color primaryColor, ThemeData theme) {
    switch (variant) {
      case ButtonVariant.primary:
        return Colors.white;
      case ButtonVariant.secondary:
        return Colors.white;
      case ButtonVariant.outline:
        return primaryColor;
      case ButtonVariant.text:
        return primaryColor;
      case ButtonVariant.white:
        return primaryColor;
    }
  }

  EdgeInsetsGeometry _getPadding() {
    switch (size) {
      case ButtonSize.small:
        return const EdgeInsets.symmetric(vertical: 8, horizontal: 16);
      case ButtonSize.medium:
        return const EdgeInsets.symmetric(vertical: 12, horizontal: 20);
      case ButtonSize.large:
        return const EdgeInsets.symmetric(vertical: 16, horizontal: 24);
    }
  }

  BorderSide _getBorderSide(Color primaryColor) {
    switch (variant) {
      case ButtonVariant.outline:
        return BorderSide(color: primaryColor, width: 1.5);
      case ButtonVariant.white:
        return BorderSide.none;
      default:
        return BorderSide.none;
    }
  }

  double _getElevation() {
    switch (variant) {
      case ButtonVariant.primary:
        return 4;
      case ButtonVariant.secondary:
        return 4;
      case ButtonVariant.white:
        return 6;
      case ButtonVariant.outline:
      case ButtonVariant.text:
        return 0;
    }
  }

  Color _getLoadingColor() {
    switch (variant) {
      case ButtonVariant.primary:
      case ButtonVariant.secondary:
        return Colors.white;
      case ButtonVariant.outline:
      case ButtonVariant.text:
      case ButtonVariant.white:
        return customColor ?? Colors.grey.shade700;
    }
  }

  Widget _buildContent() {
    if (child != null) {
      return child!;
    }

    Widget textWidget = Text(
      text!,
      style: TextStyle(
        fontSize: size == ButtonSize.small ? 14 : 16,
        fontWeight: FontWeight.bold,
      ),
    );

    if (leadingIcon != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          leadingIcon!,
          const SizedBox(width: 12),
          textWidget,
        ],
      );
    }

    return textWidget;
  }
}
