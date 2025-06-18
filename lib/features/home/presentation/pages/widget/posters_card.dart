import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:task/core/extensions/extention_navigator.dart';
import 'package:task/core/widget/custom_cache_networking_image.dart';
import 'package:task/features/home/domain/entities/posters_entities.dart';

class PostersCard extends StatefulWidget {
  const PostersCard({super.key, required this.posters});
  final List<Poster> posters;
  @override
  _PostersCardState createState() => _PostersCardState();
}

class _PostersCardState extends State<PostersCard> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CarouselSlider(
            items:
                widget.posters
                    .map(
                      (item) => Container(
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: SmartNetworkImage(imageUrl: item.image),
                      ),
                    )
                    .toList(),
            options: CarouselOptions(
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: false,
              reverse: false,

              // autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,

              enlargeFactor: 0.3,
              height: 200,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
                widget.posters.asMap().entries.map((entry) {
                  return Container(
                    width: 9.0,
                    height: 9.0,
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          _current == entry.key
                              ? context.color.purple100
                              : Colors.grey,
                    ),
                  );
                }).toList(),
          ),
        ],
      ),
    );
  }
}
