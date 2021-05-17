import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/theme.dart';
import 'custom_icon.dart';

class SearchBlock extends StatelessWidget {
  const SearchBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppTheme.padding,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.lightGrey.withAlpha(100),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Products",
                  hintStyle: TextStyle(fontSize: 12),
                  contentPadding: EdgeInsets.all(10),
                  prefixIcon: Icon(Icons.search, color: Colors.black54),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          const CustomIcon(
            icon: Icon(Icons.filter_list, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
