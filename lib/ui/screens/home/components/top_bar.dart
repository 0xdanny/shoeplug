import 'package:flutter/material.dart';

import '../../../theme/theme.dart';
import 'custom_icon.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const RotatedBox(
            quarterTurns: 4,
            child: CustomIcon(
              icon: Icon(
                Icons.sort,
                color: Colors.black54,
              ),
            ),
          ),
          CircleAvatar(
            child: Image.asset("assets/images/user.png"),
          )
        ],
      ),
    );
  }
}
