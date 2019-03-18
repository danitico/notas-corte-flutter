import 'package:flutter/material.dart';

import 'separator.dart';

/// HEAD CARD PAGE WIDGET
/// Widget used as page head in details pages, like 'Launch Page' or 'Rocket Page'.
class HeadCardPage extends StatelessWidget {
  final Widget image;
  final String title, details;
  final Widget subtitle1, subtitle2, subtitle3, subtitle4, subtitle5, subtitle6;

  HeadCardPage({
    this.image,
    this.title,
    this.details,
    this.subtitle1,
    this.subtitle2,
    this.subtitle3,
    this.subtitle4,
    this.subtitle5,
    this.subtitle6,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(children: <Widget>[
          Row(children: <Widget>[
            image,
            Separator.spacer(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Separator.spacer(height: 11),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      subtitle1,
                      Separator.spacer(height: 7),
                      subtitle2,
                      Separator.spacer(height: 7),
                      subtitle3,
                      Separator.spacer(height: 7),
                      subtitle4,
                      Separator.spacer(height: 7),
                      subtitle5,
                      Separator.spacer(height: 7),
                      subtitle6,
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
