import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

import 'cache_image.dart';

/// SWIPER HEADER WIDGET
/// Used as a sliver header, in the [background] parameter.
/// It allows the user to scroll throug multiple shots.
class SwiperHeader extends StatelessWidget {
  final List list;
  final IndexedWidgetBuilder builder;

  SwiperHeader({this.list, this.builder});

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemCount: list.length,
      itemBuilder: builder ?? (_, index) => CacheImage(list[index]),
      autoplay: true,
      autoplayDelay: 6000,
      duration: 750,
      onTap: (index) async => await FlutterWebBrowser.openWebPage(
            url: list[index],
            androidToolbarColor: Theme.of(context).primaryColor,
          ),
    );
  }
}
