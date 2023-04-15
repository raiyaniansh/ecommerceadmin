import 'package:apipostadmin/screen/bottom/provider/bottom_provider.dart';
import 'package:apipostadmin/screen/bottom/view/bottom_screen.dart';
import 'package:apipostadmin/screen/home/provider/home_provider.dart';
import 'package:apipostadmin/screen/product/view/product_screen.dart';
import 'package:apipostadmin/screen/splash/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/home/view/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),),
        ChangeNotifierProvider(create: (context) => BottomProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => Splash_screen(),
          'bottom':(context) => BottomScreen(),
          'product':(context) => ProductScreen(),
        },
      ),
    ),
  );
}
