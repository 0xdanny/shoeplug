import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../../widgets/custom_bottom_nav_bar.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
      body: SafeArea(
        child: Container(
          height: maxHeight(context) - 50,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xfffbfbfb),
                Color(0xfff7f7f7),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
        ),
      ),
    );
  }
}
