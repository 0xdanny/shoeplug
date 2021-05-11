import 'package:flutter/material.dart';
import 'package:shoeplug/ui/theme/colors.dart';

enum MenuState { home, favourite, cart, profile }

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                color: MenuState.home == selectedMenu
                    ? Color(0xFF4A3298)
                    : inActiveIconColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: MenuState.favourite == selectedMenu
                    ? AppColors.skyBlue
                    : inActiveIconColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.card_travel,
                color: MenuState.cart == selectedMenu
                    ? AppColors.skyBlue
                    : inActiveIconColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: MenuState.profile == selectedMenu
                    ? AppColors.skyBlue
                    : inActiveIconColor,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
