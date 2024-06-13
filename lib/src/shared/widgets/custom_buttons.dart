import 'package:flutter/material.dart';
import 'package:jiitak_test/src/config/themes/color_constants.dart';
import 'package:jiitak_test/src/config/themes/text_theme.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.backgroundColor,
    this.disableColor,
    this.size,
    this.titleStyle,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 8.0),
  });

  final Function()? onPressed;
  final Color? backgroundColor;
  final Color? disableColor;
  final Size? size;
  final String title;
  final TextStyle? titleStyle;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final thm = Theme.of(context);

    return Ink(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xffEE7D42).withOpacity(0.5),
            const Color(0xffFFC8AB).withOpacity(0.5),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          padding: padding,
          alignment: Alignment.center,
          constraints: BoxConstraints(
            minWidth: size?.width ?? 88,
            minHeight: size?.height ?? 36,
          ),
          child: Text(
            title,
            style: thm.textTheme.pLarge18Medium.merge(const TextStyle(color: ColorConstants.white)).merge(titleStyle),
          ),
        ),
      ),
    );
  }
}
