// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MiniArtistsItem extends StatelessWidget {
  final String path;
  final int index;
  final int amount;
  const MiniArtistsItem({
    Key? key,
    required this.path,
    required this.index,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      bottom: 0,
      left: (index * (35 - amount + index)).toDouble(),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Image.asset(
          path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
