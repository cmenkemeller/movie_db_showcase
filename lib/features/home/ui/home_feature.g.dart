// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_feature.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeFeature,
    ];

RouteBase get $homeFeature => GoRouteData.$route(
      path: '/',
      factory: $HomeFeatureExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'details/:id',
          factory: $DetailsRouteExtension._fromState,
        ),
      ],
    );

extension $HomeFeatureExtension on HomeFeature {
  static HomeFeature _fromState(GoRouterState state) => HomeFeature();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DetailsRouteExtension on DetailsRoute {
  static DetailsRoute _fromState(GoRouterState state) => DetailsRoute(
        id: state.pathParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/details/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
