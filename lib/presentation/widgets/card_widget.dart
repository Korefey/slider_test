import 'package:flutter/material.dart';
import 'package:slider_test/config/app_color.dart';
import 'package:slider_test/config/app_decorations.dart';
import 'package:slider_test/config/app_text_style.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {Key? key,
      required this.image,
      required this.name,
      required this.description})
      : super(key: key);

  final String image;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: AppDecorations.borderRadius,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Image.asset(image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Дмитро Казаков',
                  style: AppTextStyles.caption2(
                      height: 1, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                Text(
                  'Boxing',
                  style:
                      AppTextStyles.caption2(height: 1, color: AppColors.gray),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
