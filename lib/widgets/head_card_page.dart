import 'package:flutter/material.dart';

import 'separator.dart';

/// HEAD CARD PAGE WIDGET
/// Widget used as page head in details pages, like 'Launch Page' or 'Rocket Page'.
class HeadCardPage extends StatelessWidget {
  final Widget image;
  final String title, details;

  HeadCardPage({this.image, this.title, this.details});

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
                ],
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
