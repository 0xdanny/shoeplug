import 'package:flutter/material.dart';
import 'title_text.dart';
import '../../theme/theme.dart';

class TitleBlock extends StatelessWidget {
  const TitleBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppTheme.padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TitleText(
                text: 'Our',
                fontSize: 27,
                fontWeight: FontWeight.w400,
              ),
              TitleText(
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
