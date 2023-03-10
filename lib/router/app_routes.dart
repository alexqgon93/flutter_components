import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    /*MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home_max_sharp),*/
    MenuOption(
        route: 'listView1',
        name: 'ListView tipo 1',
        screen: const Listview1Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'listView2',
        name: 'ListView tipo 2',
        screen: const Listview2Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'alert',
        name: 'Alertas',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOption(
        route: 'card',
        name: 'Tarjetas',
        screen: const CardScreen(),
        icon: Icons.credit_card_rounded),
    MenuOption(
        route: 'avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOption(
        route: 'animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline_rounded),
    MenuOption(
        route: 'inputs',
        name: 'TextInputs',
        screen: const InputsScreen(),
        icon: Icons.input_rounded),
    MenuOption(
        route: 'slider',
        name: 'Slider & Checks',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video_rounded),
    MenuOption(
        route: 'listviewbuilder',
        name: 'InfinitScroll & Pull to refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }
    return appRoutes;
  }

  /* static Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => const HomeScreen(),
    'listView1': (context) => const Listview1Screen(),
    'listView2': (context) => const Listview2Screen(),
    'alert': (context) => const AlertScreen(),
    'card': (context) => const CardScreen(),
  }; */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
