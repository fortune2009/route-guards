// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../main.dart' as _i3;
import '../screens/about/about_screen.dart' as _i5;
import '../screens/dashboard/dashboard_screen.dart' as _i4;
import '../screens/dashboard/products/add_products_screen.dart' as _i8;
import '../screens/dashboard/products/product_screen.dart' as _i7;
import '../screens/dashboard/profile/profile_screen.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.HomeScreen();
        }),
    DashboardRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.DashboardScreen();
        }),
    AboutRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.AboutScreen();
        }),
    ProductsRoute.name: (routeData) => _i1.MaterialPageX<_i1.EmptyRouterPage>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    ProfileRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.ProfileScreen();
        }),
    ProductScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.ProductScreen();
        }),
    AddProductsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.AddProductsRoute();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(DashboardRoute.name, path: '/dashboard', children: [
          _i1.RouteConfig(ProductsRoute.name, path: 'products', children: [
            _i1.RouteConfig(ProductScreenRoute.name, path: ''),
            _i1.RouteConfig(AddProductsRoute.name, path: 'add_products')
          ]),
          _i1.RouteConfig(ProfileRoute.name, path: 'profile')
        ]),
        _i1.RouteConfig(AboutRouter.name, path: '/about')
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class DashboardRoute extends _i1.PageRouteInfo {
  const DashboardRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/dashboard', initialChildren: children);

  static const String name = 'DashboardRoute';
}

class AboutRouter extends _i1.PageRouteInfo {
  const AboutRouter() : super(name, path: '/about');

  static const String name = 'AboutRouter';
}

class ProductsRoute extends _i1.PageRouteInfo {
  const ProductsRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'products', initialChildren: children);

  static const String name = 'ProductsRoute';
}

class ProfileRoute extends _i1.PageRouteInfo {
  const ProfileRoute() : super(name, path: 'profile');

  static const String name = 'ProfileRoute';
}

class ProductScreenRoute extends _i1.PageRouteInfo {
  const ProductScreenRoute() : super(name, path: '');

  static const String name = 'ProductScreenRoute';
}

class AddProductsRoute extends _i1.PageRouteInfo {
  const AddProductsRoute() : super(name, path: 'add_products');

  static const String name = 'AddProductsRoute';
}
