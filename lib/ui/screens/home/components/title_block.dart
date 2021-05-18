import 'package:flutter/material.dart';

import '../../../theme/theme.dart';
import 'title_text.dart';

class TitleBlock extends StatelessWidget {
  const TitleBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: padding,
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const TitleText(
                text: 'Our',
                fontSize: 27,
                fontWeight: FontWeight.w400,
              ),
              const TitleText(
                text: 'Products',
                fontSize: 27,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
