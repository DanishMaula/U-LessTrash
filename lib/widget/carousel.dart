import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int pageIndex = 0;

  List<Widget> image = [
    Image.asset('assets/images/carousel1.png'),
    Image.asset('assets/images/carousel2.png'),
    Image.asset('assets/images/carousel3.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        CarouselSlider.builder(
            itemCount: image.length,
            itemBuilder: (context, index, realIndex) {
              final imageA = image[index];
              return buildImage(imageA, index);
            },
            options: CarouselOptions(
                height: 200,
                autoPlay: true,
                viewportFraction: 1.0,
                onPageChanged: ((index, reason) =>
                    setState((() => pageIndex = index))))),
        const SizedBox(height: 5),
        buildIndicator()
      ],
    ));
  }

  Widget buildImage(Widget image, int index) {
    return Container(
      child: image,
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: pageIndex,
        count: image.length,
        effect: const ScrollingDotsEffect(
          dotWidth: 7,
          dotHeight: 7,
          activeDotColor: Color(0xff44AD99),
          dotColor: Color(0xffE5E5E5),
        ),
      );
}
