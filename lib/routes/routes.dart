part of 'routes_imports.dart';

@AutoRouterConfig(replaceInRouteName: "R oute")
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeScreenRoute.page,
          path: "/",
        ),
        AutoRoute(
          page: ProfileScreenRoute.page,
          path: "/profileScreen",
        ),
        AutoRoute(
          page: ProfileDetailsScreenRoute.page,
          path: "/ProfileDetailScreen",
        ),
      ];
}
