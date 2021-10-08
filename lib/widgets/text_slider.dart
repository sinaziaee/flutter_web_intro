import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class TextSlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<TextSlider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CarouselSlider(
            items: kSlides,
            carouselController: _controller,
            options: CarouselOptions(
              autoPlay: true,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              viewportFraction: 1.0,
              onPageChanged: (index, reason) {
                setState(
                      () {
                    _current = index;
                  },
                );
              },
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: kSlides.asMap().entries.map(
                (entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 4.0,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black)
                        .withOpacity(
                      _current == entry.key ? 0.9 : 0.4,
                    ),
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
