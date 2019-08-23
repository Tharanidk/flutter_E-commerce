import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ImageCarousel extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/(1).jpg'),
          AssetImage('images/(2).jpg'),
          AssetImage('images/(3).jpg'),
          AssetImage('images/(4).jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 6.0,
      ),
    );
  }
}