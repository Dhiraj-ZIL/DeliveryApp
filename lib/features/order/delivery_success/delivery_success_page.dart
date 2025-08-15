import 'package:auto_route/auto_route.dart';
import 'package:flashquiz_app/core/router/app_router.dart';
import 'package:flashquiz_app/core/ui/colors/app_colors.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DeliveryCompleteScreen extends StatelessWidget {
  const DeliveryCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Green Badge with Checkmark
                Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.green,
                      width: 4,
                    ),
                  ),
                  child: Icon(
                    Icons.check,
                    size: 48,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 24),

                // Title
                const Text(
                  "Delivery Complete",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),

                // Subtitle
                const Text(
                  "Great job! Your delivery has been\nsuccessfully completed.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 32),

                // Go Home Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    onPressed: () {
                      context.router.pushAndPopUntil(
                        const HomeRoute(),
                        predicate: (route) => false,
                      );
                    },
                    child: const Text(
                      "Go Home",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
