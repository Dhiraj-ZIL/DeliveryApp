import 'package:flashquiz_app/core/models/order_model.dart';
import 'package:flashquiz_app/features/auth/auth_wrapper.dart';
import 'package:flashquiz_app/features/auth/login_page.dart';
import 'package:flashquiz_app/features/bottom_nav/bottom_nav_page.dart';
import 'package:flashquiz_app/features/home/home_page.dart';
import 'package:flashquiz_app/features/order/delivery_success/delivery_success_page.dart';
import 'package:flashquiz_app/features/order/order_detail/order_detail_page.dart';
import 'package:flashquiz_app/features/order/order_page.dart';
import 'package:flashquiz_app/features/order/order_track_map/order_track_map.dart';
import 'package:flashquiz_app/features/profile/profile_page.dart';
import 'package:flashquiz_app/features/setting.dart/change_theme_page.dart';
import 'package:flashquiz_app/features/shipment/shipment_complete/shipment_complete_page.dart';
import 'package:flashquiz_app/features/shipment/shipment_page.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: ChangeThemeRoute.page),
        AutoRoute(page: OrderDetailsRoute.page),
        AutoRoute(page: OrderTrackMapRoute.page),
        AutoRoute(page: DeliveryCompleteRoute.page),
        AutoRoute(initial: true, page: AuthWrapperRoute.page, children: [
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: OrdersRoute.page),
          AutoRoute(
            page: ProfileRoute.page,
          ),
          AutoRoute(page: ShipmentRoute.page),
        ]),
        AutoRoute(
          page: BottomNavRoute.page,
          children: [
            AutoRoute(
              page: AuthWrapperRoute.page,
            ),
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: OrdersRoute.page),
            AutoRoute(
              page: ProfileRoute.page,
            ),
            AutoRoute(page: ShipmentRoute.page),
          ],
        ),
      ];
}
