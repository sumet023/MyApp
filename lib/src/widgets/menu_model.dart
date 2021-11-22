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


class MenuViewModel {
  MenuViewModel();


  List<Menu> get items => <Menu>[
    Menu(
      title: 'Profile',
      icon: Icons.person_outline_sharp,
      iconColor: Colors.indigo,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.ProfilePageRoute);
      },
    ),
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
      title: 'Add room',
      icon: Icons.add,
      iconColor: Colors.orange,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.AppRoomPageRoute);
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