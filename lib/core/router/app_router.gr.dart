// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<AuthWrapperRouteArgs>(
          orElse: () => const AuthWrapperRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthWrapperPage(key: args.key),
      );
    },
    BottomNavRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomNavPage(),
      );
    },
    ChangeThemeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChangeThemePage(),
      );
    },
    DeliveryCompleteRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DeliveryCompleteScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    OrderDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<OrderDetailsRouteArgs>(
          orElse: () => const OrderDetailsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrderDetailsPage(
          key: args.key,
          orderData: args.orderData,
        ),
      );
    },
    OrderTrackMapRoute.name: (routeData) {
      final args = routeData.argsAs<OrderTrackMapRouteArgs>(
          orElse: () => const OrderTrackMapRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrderTrackMapPage(
          key: args.key,
          orderData: args.orderData,
        ),
      );
    },
    OrdersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrdersPage(),
      );
    },
    OrderHistoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderHistoryPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    ShipmentCompleteRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShipmentCompletePage(),
      );
    },
    ShipmentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShipmentPage(),
      );
    },
  };
}

/// generated route for
/// [AuthWrapperPage]
class AuthWrapperRoute extends PageRouteInfo<AuthWrapperRouteArgs> {
  AuthWrapperRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AuthWrapperRoute.name,
          args: AuthWrapperRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AuthWrapperRoute';

  static const PageInfo<AuthWrapperRouteArgs> page =
      PageInfo<AuthWrapperRouteArgs>(name);
}

class AuthWrapperRouteArgs {
  const AuthWrapperRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AuthWrapperRouteArgs{key: $key}';
  }
}

/// generated route for
/// [BottomNavPage]
class BottomNavRoute extends PageRouteInfo<void> {
  const BottomNavRoute({List<PageRouteInfo>? children})
      : super(
          BottomNavRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChangeThemePage]
class ChangeThemeRoute extends PageRouteInfo<void> {
  const ChangeThemeRoute({List<PageRouteInfo>? children})
      : super(
          ChangeThemeRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangeThemeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DeliveryCompleteScreen]
class DeliveryCompleteRoute extends PageRouteInfo<void> {
  const DeliveryCompleteRoute({List<PageRouteInfo>? children})
      : super(
          DeliveryCompleteRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeliveryCompleteRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrderDetailsPage]
class OrderDetailsRoute extends PageRouteInfo<OrderDetailsRouteArgs> {
  OrderDetailsRoute({
    Key? key,
    OrderModel? orderData,
    List<PageRouteInfo>? children,
  }) : super(
          OrderDetailsRoute.name,
          args: OrderDetailsRouteArgs(
            key: key,
            orderData: orderData,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderDetailsRoute';

  static const PageInfo<OrderDetailsRouteArgs> page =
      PageInfo<OrderDetailsRouteArgs>(name);
}

/// generated route for
/// [OrderHistoryPage]
class OrderHistoryRoute extends PageRouteInfo<void> {
  const OrderHistoryRoute({List<PageRouteInfo>? children})
      : super(
          OrderHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderHistoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

class OrderDetailsRouteArgs {
  const OrderDetailsRouteArgs({
    this.key,
    this.orderData,
  });

  final Key? key;

  final OrderModel? orderData;

  @override
  String toString() {
    return 'OrderDetailsRouteArgs{key: $key, orderData: $orderData}';
  }
}

/// generated route for
/// [OrderTrackMapPage]
class OrderTrackMapRoute extends PageRouteInfo<OrderTrackMapRouteArgs> {
  OrderTrackMapRoute({
    Key? key,
    OrderModel? orderData,
    List<PageRouteInfo>? children,
  }) : super(
          OrderTrackMapRoute.name,
          args: OrderTrackMapRouteArgs(
            key: key,
            orderData: orderData,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderTrackMapRoute';

  static const PageInfo<OrderTrackMapRouteArgs> page =
      PageInfo<OrderTrackMapRouteArgs>(name);
}

class EmptyOrderRoute extends PageRouteInfo<void> {
  const EmptyOrderRoute({List<PageRouteInfo>? children})
      : super(
          EmptyOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyOrderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

class OrderTrackMapRouteArgs {
  const OrderTrackMapRouteArgs({
    this.key,
    this.orderData,
  });

  final Key? key;

  final OrderModel? orderData;

  @override
  String toString() {
    return 'OrderTrackMapRouteArgs{key: $key, orderData: $orderData}';
  }
}

/// generated route for
/// [OrdersPage]
class OrdersRoute extends PageRouteInfo<void> {
  const OrdersRoute({List<PageRouteInfo>? children})
      : super(
          OrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShipmentCompletePage]
class ShipmentCompleteRoute extends PageRouteInfo<void> {
  const ShipmentCompleteRoute({List<PageRouteInfo>? children})
      : super(
          ShipmentCompleteRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShipmentCompleteRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShipmentPage]
class ShipmentRoute extends PageRouteInfo<void> {
  const ShipmentRoute({List<PageRouteInfo>? children})
      : super(
          ShipmentRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShipmentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
