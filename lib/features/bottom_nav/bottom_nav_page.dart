import 'package:flashquiz_app/core/router/app_router.dart';
import 'package:flashquiz_app/core/ui/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  final List<PageRouteInfo> _routes = [
    const HomeRoute(),
    const OrderHistoryRoute(),
    const ShipmentRoute(),
    const ProfileRoute(),
  ];

  void _onTabTapped(int index) {
    context.router.navigate(_routes[index]);
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: _routes,
      duration: const Duration(milliseconds: 30),
      transitionBuilder: (context, child, animation) =>
          FadeTransition(opacity: animation, child: child),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: _onTabTapped,
            elevation: 10,
            backgroundColor: Colors.white,
            selectedItemColor: Theme.of(context).primaryColor,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.primary,
            ),
            items: [
              BottomNavigationBarItem(
                icon: CustomNavIcon(
                  icon: Icons.home,
                  isActive: tabsRouter.activeIndex == 0,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: CustomNavIcon(
                  icon: Icons.leaderboard_outlined,
                  isActive: tabsRouter.activeIndex == 1,
                ),
                label: 'Orders',
              ),
              BottomNavigationBarItem(
                icon: CustomNavIcon(
                  icon: Icons.local_shipping_outlined,
                  isActive: tabsRouter.activeIndex == 2,
                ),
                label: 'Shipment',
              ),
              BottomNavigationBarItem(
                icon: CustomNavIcon(
                  icon: Icons.person_outline,
                  isActive: tabsRouter.activeIndex == 3,
                ),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}

class CustomNavIcon extends StatelessWidget {
  final IconData icon;
  final bool isActive;

  const CustomNavIcon({
    Key? key,
    required this.icon,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isActive
            ? AppColors.primary.withValues(alpha: 0.15)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(32.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 7.sp),
      child: Icon(
        icon,
        color: isActive ? AppColors.primary : Colors.grey,
      ),
    );
  }
}
