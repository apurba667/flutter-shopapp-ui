import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CaroselSliderLoading extends StatefulWidget {
  const CaroselSliderLoading({Key? key}) : super(key: key);

  @override
  State<CaroselSliderLoading> createState() => _CaroselSliderLoadingState();
}

class _CaroselSliderLoadingState extends State<CaroselSliderLoading> {
  final List<String> imgList = [
    "https://static01.nyt.com/images/2018/08/01/dining/01Grocery1-alpha/01Grocery1-superJumbo-v2.jpg",
    "https://cdn.pixabay.com/photo/2016/01/27/22/10/shopping-1165437__340.jpg",
    "https://thumbs.dreamstime.com/b/shopping-cart-full-food-supermarket-aisle-elevated-view-high-internal-horizontal-composition-63616470.jpg",
    "https://www.kare-design.com/wp-content/uploads/2015/08/2.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            items: imgList
                .map((item) => Container(
                      child: Center(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.network(
                              item,
                              fit: BoxFit.cover,
                              width: 1000,
                            )),
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
                autoPlay: true, aspectRatio: 2.0, enlargeCenterPage: true))
      ],
    );
  }
}
