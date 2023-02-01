import 'package:flutter/material.dart';
import 'package:slider_test/config/app_color.dart';
import 'package:slider_test/config/app_text_style.dart';
import 'package:slider_test/domain/state/home_provider.dart';
import 'package:slider_test/presentation/widgets/app_button.dart';
import 'package:slider_test/presentation/widgets/bottom_button.dart';
import 'package:slider_test/presentation/widgets/carousel/carousel.dart';
import 'package:slider_test/presentation/widgets/title_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends StatefulHookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(storyProvider.notifier).fetchStory();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 282,
                      child: Carousel(),
                    ),
                    const TitleWidget(
                        titleText: 'Дмитро Казаков', dataText: '15.02 | 14:00 (55 хв)', addressText: 'Zhylianska St, 41А, Kyiv, 01033'),
                    Padding(
                      padding: const EdgeInsets.only(left: 17, top: 8),
                      child: Text(
                        'Відчуй і збільш свою силу на боксінгу. Розкріпачуйся в темному залі під '
                        'потужний біт хіп-хопу. Став удар на грушах',
                        style: AppTextStyles.caption2(height: 1.5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17, top: 22),
                      child: Text(
                        'Важлива інформація',
                        style: AppTextStyles.caption3(height: 1),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17, top: 8),
                      child: Text(
                        'На тренування необхідно взяти будь-яку спортивну форму, що не сковує рухів, кросівки '
                        'та гелеві бинти, придбати можна в студії за 500 грн.',
                        style: AppTextStyles.caption2(height: 1.5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17, top: 24),
                      child: Text(
                        'Ми дбаємо про Вашу безпеку, тому не допускаємо до занять у разі запізнення більш, ніж на 5 хвилин з початку тренування.енування необхідно взяти будь-яку спортивну форму, що не сковує рухів, кросівки та гелеві бинти, придбати можна в студії за 500 грн.',
                        style: AppTextStyles.caption2(height: 1.5),
                      ),
                    ),
                    const SizedBox(height: 140),
                  ],
                ),
              ),
              BottomButton(
                listOfWidget: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 18, right: 18, bottom: 32),
                    child: AppButton(
                      text: 'Booking',
                      onPressed: () => context.go('/about'),
                    ),
                  ),
                ],
              ),
             ],
          ),
        ),
      ),
    );
  }
}
