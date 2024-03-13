import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/styles.dart';

class LibraryItem extends StatelessWidget {
  const LibraryItem({super.key, required this.item});
  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 110,
          width: double.maxFinite,
          decoration: item['isCircle'] != null
              ? null
              : BoxDecoration(
                  color: item['title'] == 'Liked Songs'
                      ? null
                      : Color.fromRGBO(Random().nextInt(255),
                          Random().nextInt(255), Random().nextInt(255), 1),
                  gradient: item['title'] == 'Liked Songs'
                      ? const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 5, 27, 218),
                            Colors.white,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        )
                      : null,
                ),
          child: item['isCircle'] == null
              ? item['image']
              : Image.asset(
                  item['image'],
                  fit: BoxFit.contain,
                ),
        ),
        const SizedBox(height: 4),
        Text(
          item['title'],
          style: TextStyles.searchHint(color: Colors.white),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 4),
        Text(
          item['subtitle'],
          style: TextStyles.textGrey(color: Colors.grey),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
