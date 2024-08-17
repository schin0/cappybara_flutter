import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';
  static const String eventoScreen = '/evento_screen';
  static const String buscaScreen = '/busca_screen';

  static const String rotaInicial = '/rotaInicial';

  static Map<String, WidgetBuilder> get routes =>
      {homeScreen: HomeScreen.builder, rotaInicial: HomeScreen.builder};
}
