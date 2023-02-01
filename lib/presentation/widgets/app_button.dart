import 'package:flutter/material.dart';
import 'package:slider_test/config/app_color.dart';
import 'package:slider_test/config/app_decorations.dart';
import 'package:slider_test/config/app_text_style.dart';
import 'package:slider_test/presentation/widgets/app_gesture_detector.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color textColor;
  final Color color;
  final double height;
  final bool ignoreBottomPadding;
  final bool border;

  AppButton({
    required this.text,
    this.onPressed,
    Key? key,
    this.height = 48,
    this.ignoreBottomPadding = false,
  })  : textColor = Colors.white,
        color = onPressed != null
            ? AppColors.black
            : AppColors.black.withOpacity(0.3),
        border = false,
        super(key: key);

  AppButton.inverted({
    required this.text,
    required this.onPressed,
    Key? key,
    this.height = 48,
    this.ignoreBottomPadding = false,
  })  : textColor = onPressed != null
            ? AppColors.black
            : AppColors.black.withOpacity(0.3),
        color = Colors.transparent,
        border = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ignoreBottomPadding
          ? EdgeInsets.zero
          : EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom > 0 ? 24 : 0),
      child: AppGestureDetector(
        onTap: onPressed,
        child: AnimatedContainer(
          height: height,
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: color,
            borderRadius: AppDecorations.borderRadius,
            border: Border.all(
              color: border == true ? AppColors.black : Colors.transparent,
              width: 1,
            ),
          ),
          alignment: Alignment.center,
          child: Text(text,
              style: AppTextStyles.button1(color: textColor, height: 1)),
        ),
      ),
    );
  }
}
