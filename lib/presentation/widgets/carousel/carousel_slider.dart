import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:slider_test/domain/model/image_data.dart';
import 'package:slider_test/presentation/widgets/carousel/carousel_item.dart';

class CarouselWithIndicator extends StatefulWidget {
  const CarouselWithIndicator({super.key, required this.imgData});

  final List<ImageData> imgData;

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        CarouselSlider(
          items: widget.imgData
              .map((imgUrl) => CarouselItem(imgUrl: imgUrl.fileName))
              .toList(),
          carouselController: _controller,
          options: CarouselOptions(
              height: 282,
              viewportFraction: 1.0,
              autoPlay: true,
              enlargeCenterPage: false,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.imgData.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.white)
                        .withOpacity(_current == entry.key ? 0.9 : 0.0),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ]),
    );
  }
}
