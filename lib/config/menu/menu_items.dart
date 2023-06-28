import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Buttons', 
    subTitle: 'Different Flutter\'s buttons', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined
    ),
  MenuItem(
    title: 'Cards', 
    subTitle: 'Styled containers', 
    link: '/cards', 
    icon: Icons.credit_card
    ),
  MenuItem(
    title: 'Progress Indicators', 
    subTitle: 'Generals and controlled', 
    link: '/progress', 
    icon: Icons.refresh_rounded
    ),
  MenuItem(
    title: 'Snacks-Bars and Dialogues', 
    subTitle: 'Screens indicators', 
    link: '/snackbars', 
    icon: Icons.info_outline
    ),
  MenuItem(
    title: 'Animated container', 
    subTitle: 'Stateful widget animated', 
    link: '/animated', 
    icon: Icons.check_box_outline_blank_outlined
    ),
  MenuItem(
    title: 'UI Controls + Tiles', 
    subTitle: 'A serie of Flutter controls', 
    link: '/ui-controls', 
    icon: Icons.car_rental_outlined
    ),
  MenuItem(
    title: 'App Tutorial', 
    subTitle: 'How to use the application', 
    link: '/tutorial', 
    icon: Icons.tablet_mac_rounded
    ),

];