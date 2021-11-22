import 'package:flutter/material.dart';
import 'package:miniproject/src/config/app_route.dart';

class Menu {
  final String title;
  final IconData icon;
  final Color iconColor;
  final Function(BuildContext context) onTap;


  const Menu({
    this.title,
    this.icon,
    this.iconColor = Colors.grey,
    this.onTap,
  });
}


class MenuViewModelToo {
  MenuViewModelToo();


  List<Menu> get items => <Menu>[
    Menu(
      title: 'Rental room type',
      icon: Icons.apartment_outlined,
      iconColor: Colors.brown,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.TypepagesRoute);
      },
    ),
    Menu(
      title: 'Compare rental rooms',
      icon: Icons.water_damage_outlined,
      iconColor: Colors.green,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.RoomPageRoute);
      },
    ),
    Menu(
      title: 'Login',
      icon: Icons.login,
      iconColor: Colors.blue,
      onTap: (context) {
         Navigator.pushNamed(context, AppRoute.LoginRoute);
      },
    ),

  ];
}