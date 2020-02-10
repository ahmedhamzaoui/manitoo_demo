import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:manitoo_demo/route_generator.dart';
import  'package:manitoo_demo/config/app_config.dart' as config;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await GlobalConfiguration().loadFromAsset("configurations");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'manIToo Xpert',
        initialRoute: '/Login',
        onGenerateRoute: RouteGenerator.generateRoute,
        debugShowCheckedModeBanner: false,

      );
  }
}


