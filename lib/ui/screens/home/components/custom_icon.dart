import 'package:flutter/material.dart';
import '../../../theme/theme.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(13)),
        color: Theme.of(context).backgroundColor,
        boxShadow: AppTheme.shadow,
      ),
      child: icon,
    );
  }
}
