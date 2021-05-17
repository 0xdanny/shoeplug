import 'package:flutter/material.dart';
import 'package:shoeplug/ui/theme/theme.dart';
import 'package:shoeplug/ui/widgets/custom_bottom_nav_bar.dart';

import 'components/discount_banner.dart';
import 'components/product_sections.dart';
import 'components/search_block.dart';
import 'components/title_block.dart';
import 'components/top_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
      body: SafeArea(
        child: Container(
          height: AppTheme.maxHeight(context) - 50,
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
              children: [
                const TopBar(),
                const TitleBlock(),
                const SearchBlock(),
                const DiscountBanner(),
                PopularProducts(),
                NewestAdditions(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
