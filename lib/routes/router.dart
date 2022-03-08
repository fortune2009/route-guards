import 'package:auto_route/auto_route.dart';
import 'package:routingweb/main.dart';
import 'package:routingweb/routes/route_guard.dart';
import 'package:routingweb/screens/about/about_screen.dart';
import 'package:routingweb/screens/dashboard/dashboard_screen.dart';
import 'package:routingweb/screens/dashboard/products/add_products_screen.dart';
import 'package:routingweb/screens/dashboard/products/product_screen.dart';
import 'package:routingweb/screens/dashboard/profile/profile_screen.dart';
import 'package:routingweb/screens/login/login_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeScreen,
      name: 'HomeRoute',
      path: '/'
    ),
   AutoRoute(
      page: LoginScreen,
      name: 'LoginRoute',
      path: '/login'
    ),
    AutoRoute(
      page: DashboardScreen,
      name: 'DashboardRoute',
      path: '/dashboard',
      guards: [RouteGuard],
      children: <AutoRoute> [
        AutoRoute<EmptyRouterPage>(
          name: 'ProductsRoute',
          path: 'products',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              page: ProductScreen,
              path: '',
            ),
            AutoRoute(
                page: AddProductsRoute,
                name: 'AddProductsRoute',
                path: 'add_products'),
          ]
        ),
        AutoRoute(page: ProfileScreen, name: 'ProfileRoute', path: 'profile')
      ]
    ),
    AutoRoute(page: AboutScreen, name: 'AboutRouter', path: '/about')
  ]
)
class $AppRouter {}

