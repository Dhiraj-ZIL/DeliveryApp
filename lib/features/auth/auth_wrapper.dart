import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flashquiz_app/core/service/auth/auth_service.dart';
import 'package:flashquiz_app/features/auth/login_page.dart';
import 'package:flashquiz_app/features/bottom_nav/bottom_nav_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuthWrapperPage extends StatelessWidget {
  final AuthService _authService = AuthService();

  AuthWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: _authService.userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final User? user = snapshot.data;

          if (user == null) {
            // User is not signed in
            return const LoginPage();
          } else {
            // User is signed in
            return BottomNavPage();
          }
        }

        // Loading state
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
