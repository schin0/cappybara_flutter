import 'package:cappybara_flutter/providers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'routes/app_routes.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  ]).then((value) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return ChangeNotifierProvider(
          create: (context) => HomeProvider(),
          child: child!,
        );
      },
      title: 'Cappybara em Flutter',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.rotaInicial,
      routes: AppRoutes.routes,
    );
  }
}
