import 'package:auto_route/auto_route.dart';
import 'package:routingweb/main.dart';
import 'package:routingweb/screens/dashboard/dashboard_screen.dart';
import 'package:routingweb/screens/dashboard/products/add_products_screen.dart';
import 'package:routingweb/screens/dashboard/products/product_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeScreen,
      name: 'HomeRoute',
      path: '/'
    ),
    AutoRoute(
      page: DashboardScreen,
      name: 'DashboardRoute',
      path: '/dashboard',
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
        )
      ]
    )
  ]
)
class $AppRouter {}

