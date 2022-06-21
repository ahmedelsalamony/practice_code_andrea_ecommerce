import 'package:ecommerce_app/src/features/account/account_screen.dart';
import 'package:ecommerce_app/src/features/orders_list/orders_list_screen.dart';
import 'package:ecommerce_app/src/features/shopping_cart/shopping_cart_screen.dart';
import 'package:ecommerce_app/src/features/sign_in/email_password_sign_in_screen.dart';
import 'package:ecommerce_app/src/features/sign_in/email_password_sign_in_state.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/products_list/products_list_screen.dart';

enum AppRoute { home, account, singIn, orders, productsList, cart }

final goRouter = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
          path: '/',
          builder: (context, state) => const ProductsListScreen(),
          routes: [
            GoRoute(
              path: 'cart',
              name: AppRoute.cart.name,
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: const ShoppingCartScreen(),
                fullscreenDialog: true,
              ),
            ),
            GoRoute(
              path: 'signIn',
              name: AppRoute.singIn.name,
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: const EmailPasswordSignInScreen(
                  formType: EmailPasswordSignInFormType.signIn,
                ),
                fullscreenDialog: true,
              ),
            ),
            GoRoute(
              path: 'orders',
              name: AppRoute.orders.name,
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: const OrdersListScreen(),
                fullscreenDialog: true,
              ),
            ),
            GoRoute(
              path: 'account',
              name: AppRoute.account.name,
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: const AccountScreen(),
                fullscreenDialog: true,
              ),
            ),
          ])
    ],
    debugLogDiagnostics: true);
