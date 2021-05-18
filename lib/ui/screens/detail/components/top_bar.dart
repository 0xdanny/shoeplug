import 'package:flutter/material.dart';

import '../../../theme/theme.dart';
import '../../home/components/custom_icon.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
    this.isFavourite = false,
  }) : super(key: key);

  final bool isFavourite;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const CustomIcon(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black54,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: isFavourite
                ? const Icon(Icons.favorite)
                : const Icon(Icons.favorite_border),
            color: isFavourite ? Colors.red : Colors.grey,
          ),
        ],
      ),
    );
  }
}
