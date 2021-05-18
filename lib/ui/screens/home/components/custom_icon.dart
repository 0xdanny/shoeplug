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
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(13)),
        color: Theme.of(context).backgroundColor,
        boxShadow: shadow,
      ),
      child: icon,
    );
  }
}
