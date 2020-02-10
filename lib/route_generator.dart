import 'package:flutter/material.dart';
import 'package:manitoo_demo/src/pages/login.dart';

class RouteGenerator {


 static Route<dynamic> generateRoute (RouteSettings settings) {
   // Getting arguments passed in while calling Navigator.pushNamed
   final args = settings.arguments;

   switch (settings.name) {
     case '/Login':
       return MaterialPageRoute(builder: (_) => LoginWidget());


   }



 }

 static Route<dynamic> _errorRoute() {
   return MaterialPageRoute(builder: (_) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Error'),
       ),
       body: Center(
         child: Text('ERROR'),
       ),
     );
   });
 }



}