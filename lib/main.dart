import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:routingweb/routes/route_guard.dart';
import 'package:routingweb/routes/router.gr.dart';
import 'package:routingweb/util/auth_service.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
static MyAppState of(BuildContext context) =>
    context.findAncestorStateOfType<MyAppState>()!;
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final authService = AuthService();
  late final _appRouter = AppRouter(routeGuard: RouteGuard(authService));

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Home')),
      floatingActionButton: FloatingActionButton(onPressed: () {
        AutoRouter.of(context).push(DashboardRoute());
      },),
    );
  }
}