import 'package:flutter/material.dart';
import 'package:slider_test/config/app_color.dart';
import 'package:slider_test/config/app_text_style.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget(
      {Key? key,
      required this.titleText,
      required this.dataText,
      required this.addressText,
      this.freePlaceCount = 0})
      : super(key: key);

  final String titleText;
  final String dataText;
  final String addressText;
  final int freePlaceCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 17, top: 17),
                child: Text(
                  titleText,
                  style: AppTextStyles.caption1(height: 1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, top: 19),
                child: Text(
                  dataText,
                  style: AppTextStyles.caption2(height: 1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, top: 8),
                child: Text(
                  addressText,
                  style:
                      AppTextStyles.caption2(height: 1, color: AppColors.gray),
                ),
              ),
            ],
          ),
        ),
        freePlaceCount > 0
            ? Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.local_fire_department_sharp,
                      color: Colors.orange,
                    ),
                    Text(
                      'Залишилося',
                      style: AppTextStyles.caption4(height: 1),
                    ),
                    Text(
                      '$freePlaceCount місця',
                      style: AppTextStyles.caption4(height: 1),
                    ),
                  ],
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
