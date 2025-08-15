import 'package:core/core.dart';
import 'package:flashquiz_app/core/base/base_state.dart';
import 'package:flashquiz_app/core/di/dependency_injection.dart';
import 'package:flashquiz_app/core/extensions/build_context_ext_theme.dart';
import 'package:flashquiz_app/core/router/app_router.dart';
import 'package:flashquiz_app/features/auth/cubit/auth_cubit.dart';
import 'package:flashquiz_app/features/auth/cubit/auth_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.2, 0.8, curve: Curves.easeIn),
      ),
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.2, 0.8, curve: Curves.easeOutBack),
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => get<AuthCubit>()..checkAuthStatus(),
      child: BlocConsumer<AuthCubit, AsyncValue<AuthState>>(
        listener: (context, state) {
          // Navigate to home when authenticated
          if (state.data?.status == AuthStatus.authenticated) {
            context.router.pushAndPopUntil(AuthWrapperRoute(),
                predicate: (route) => false);
          }
        },
        builder: (context, state) {
          final authCubit = context.read<AuthCubit>();
          final authState = state.data;

          return Scaffold(
            body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Theme.of(context).primaryColor,
                    Theme.of(context).primaryColor.withValues(alpha: 0.8),
                    Theme.of(context).primaryColor.withValues(alpha: 0.6),
                  ],
                ),
              ),
              child: SafeArea(
                child: Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // App Logo
                        ScaleTransition(
                          scale: _scaleAnimation,
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.2),
                                  blurRadius: 20,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Icon(
                                Icons.lightbulb,
                                size: 64,
                                color: Colors.amber.shade600,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 40),

                        // App Title
                        AnimatedOpacityWidget(
                          animationController: _animationController,
                          fadeAnimation: _fadeAnimation,
                          child: Text(
                            "DeliveryApp",
                            style: context.bodyLarge?.copyWith(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),

                        const SizedBox(height: 16),

                        // App Subtitle
                        AnimatedOpacityWidget(
                          animationController: _animationController,
                          fadeAnimation: _fadeAnimation,
                          child: Text(
                            "Test your knowledge with fun quizzes!",
                            style: context.bodyLarge?.copyWith(
                              fontSize: 16,
                              color: Colors.white.withValues(alpha: 0.9),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),

                        const SizedBox(height: 60),

                        // Google Sign In Button

                        const SizedBox(height: 20),

                        // Anonymous Sign In Button
                        _buildAnonymousSignInButton(authCubit, authState!),

                        // Error Message
                        if (authState.errorMessage != null)
                          Padding(
                            padding: const EdgeInsets.only(top: 24),
                            child: AnimatedOpacityWidget(
                              animationController: _animationController,
                              fadeAnimation: _fadeAnimation,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 16),
                                decoration: BoxDecoration(
                                  color: Colors.red.shade50,
                                  borderRadius: BorderRadius.circular(12),
                                  border:
                                      Border.all(color: Colors.red.shade200),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.error_outline,
                                        color: Colors.red.shade700, size: 20),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        authState.errorMessage!,
                                        style: context.bodyMedium?.copyWith(
                                            color: Colors.red.shade700,
                                            fontSize: 14),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                        const SizedBox(height: 40),

                        // Privacy Policy Note
                        AnimatedOpacityWidget(
                          animationController: _animationController,
                          fadeAnimation: _fadeAnimation,
                          child: Text(
                            "By signing in, you agree to our Terms of Service and Privacy Policy",
                            style: context.bodySmall?.copyWith(
                              fontSize: 12,
                              color: Colors.white.withValues(alpha: 0.7),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildGoogleSignInButton(AuthCubit authCubit, AuthState authState) {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        onPressed: () => authCubit.signInWithGoogle(),
        text: 'Continue with Google',
        variant: ButtonVariant.white,
        size: ButtonSize.large,
        isLoading: authState.isGoogleLoading,
        leadingIcon: SizedBox(
          height: 24,
          width: 24,
          child: _buildGoogleLogo(),
        ),
      ),
    );
  }

  Widget _buildAnonymousSignInButton(AuthCubit authCubit, AuthState authState) {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        onPressed: () => authCubit.signInAnonymously(),
        text: 'Continue as Guest',
        variant: ButtonVariant.white,
        size: ButtonSize.large,
        isLoading: authState.isLoading,
        leadingIcon: SizedBox(
          height: 24,
          width: 24,
          child: Icon(
            Icons.person_outline,
            size: 24,
            color: Colors.grey.shade700,
          ),
        ),
      ),
    );
  }

  Widget _buildGoogleLogo() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: const Center(
        child: Icon(
          CupertinoIcons.globe,
        ),
      ),
    );
  }
}
