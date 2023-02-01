import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:slider_test/config/app_color.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, required this.listOfWidget}) : super(key: key);
  final List<Widget> listOfWidget;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: defaultTargetPlatform == TargetPlatform.android ? 112 : 138,
        color: AppColors.background,
        child: Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Visibility(
                visible: listOfWidget.isNotEmpty ? true : false,
                child: const Divider(
                  thickness: 1,
                ),
              ),
              for ( Widget curWidget in listOfWidget ) curWidget,
            ],
          ),
        ),
      ),
    );
  }
}
