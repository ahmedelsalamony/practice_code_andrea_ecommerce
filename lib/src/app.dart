import 'package:ecommerce_app/src/features/products_list/products_list_screen.dart';
import 'package:ecommerce_app/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'router/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: goRouter.routeInformationParser,
      routerDelegate: goRouter.routerDelegate,
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      // * The home page of the app
      onGenerateTitle: (BuildContext context) => 'My Shop'.hardcoded,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black87,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.black, // background (button) color
            onPrimary: Colors.white, // foreground (text) color
          ),
        ),
      ),
    );
  }
}
