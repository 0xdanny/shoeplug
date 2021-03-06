import 'package:flutter/material.dart';
import 'title_text.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.ontap,
  }) : super(key: key);

  final String title;
  final GestureTapCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleText(
          text: title,
        ),
        GestureDetector(
          onTap: ontap,
          child: const Text(
            "See More",
            style: TextStyle(color: Color(0xFFBBBBBB)),
          ),
        ),
      ],
    );
  }
}
