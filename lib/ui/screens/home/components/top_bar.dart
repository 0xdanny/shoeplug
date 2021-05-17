import 'package:flutter/material.dart';
import 'custom_icon.dart';
import '../../../theme/theme.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppTheme.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RotatedBox(
            quarterTurns: 4,
            child: CustomIcon(
              icon: Icon(
                Icons.sort,
                color: Colors.black54,
              ),
            ),
          ),
          // ClipRRect(
          //   borderRadius: BorderRadius.all(Radius.circular(13)),
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Theme.of(context).backgroundColor,
          //       boxShadow: <BoxShadow>[
          //         BoxShadow(
          //           color: Color(0xfff8f8f8),
          //           blurRadius: 10,
          //           spreadRadius: 10,
          //         ),
          //       ],
          //     ),
          //     child: Image.asset("assets/images/user.png"),
          //   ),
          // ),
          CircleAvatar(
            child: Image.asset("assets/images/user.png"),
          )
        ],
      ),
    );
  }
}
