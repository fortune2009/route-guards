import 'package:auto_route/auto_route.dart';
import 'package:routingweb/routes/router.gr.dart';
import 'package:routingweb/util/auth_service.dart';

class RouteGuard extends AutoRedirectGuard {  
  final AuthService authService;

  RouteGuard(this.authService) {
    authService.addListener(() {
      if(!authService.authenticated) {
        reevaluate();
      }
    });
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if(authService.authenticated) return resolver.next();
    router.push(
      LoginRoute(
        onLoginCallback: (_) {
          resolver.next();
          router.removeLast();
        }
      )
    );
  }

}