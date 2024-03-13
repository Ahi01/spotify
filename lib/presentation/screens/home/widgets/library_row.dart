import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/styles.dart';

class LibraryRowItem extends StatelessWidget {
  const LibraryRowItem({super.key, required this.item});
  final Map<String, dynamic> item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48,
          width: 48,
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
                            Color.fromARGB(255, 58, 5, 217),
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
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.contain,
                ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item['title'],
                style: TextStyles.searchHint(
                  color: Colors.white,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                item['subtitle'],
                style: TextStyles.textGrey(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        )
      ],
    );
  }
}
