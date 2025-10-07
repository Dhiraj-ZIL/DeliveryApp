import 'dart:math';

import 'package:another_flushbar/flushbar.dart';
import 'package:flashquiz_app/core/ui/colors/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isOnline = false;
  int _selectedIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightMajor,
      appBar: AppBar(
        backgroundColor: AppColors.mapOverlayLight,
        elevation: 0,
        title: Align(
          alignment: Alignment.centerLeft,
          child: const Text(
            'Account',
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Colors.black,
              letterSpacing: 0,
            ),
          ),
        ),
        titleSpacing: 20,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Profile Card
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.mapOverlayLight,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  // Avatar
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/person.jpg'),
                  ),
                  const SizedBox(width: 16),
                  // User Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Dhiraj Sardar',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xFF141414),
                                letterSpacing: 0,
                              ),
                            ),
                            const SizedBox(width: 7),
                            Container(
                              padding: const EdgeInsets.all(2),
                              child: Icon(
                                Icons.verified,
                                color: AppColors.primary,
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          '9812360415',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xFF141414),
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Edit Icon
                  IconButton(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.all(2),
                    onPressed: () {
                      // Add your edit logic here
                    },
                    icon: ImageIcon(
                      AssetImage('assets/icon/edit_icon.png'),
                      color: Color(0xFF141414),
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Online Status Card
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.mapOverlayLight,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      color: isOnline
                          ? AppColors.brandGreen
                          : AppColors.brandPrimary,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    "You're Online",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color:
                          isOnline ? AppColors.brandGreen : AppColors.primary,
                    ),
                  ),
                  const Spacer(),
                  Switch(
                    value: isOnline,
                    onChanged: (value) {
                      setState(() {
                        isOnline = value;
                      });
                    },
                    activeThumbColor: Colors.white,
                    activeTrackColor: Colors.red,
                    inactiveThumbColor: Color(0xFF79747E),
                    inactiveTrackColor: Color(0xFFE6E0E9),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Menu Items Card
            Container(
              decoration: BoxDecoration(
                color: AppColors.mapOverlayLight,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  _buildMenuItem(Icons.description_outlined, 'Documents',
                      onTap: () {}),
                  _buildMenuItem(Icons.headset_mic_outlined, 'Help & Support',
                      onTap: () {}),
                  _buildMenuItem(Icons.help_outline, 'About App', onTap: () {}),
                  _buildMenuItem(Icons.logout, 'Logout', onTap: () {}),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Delete Account Card
            Container(
              width: double.infinity,
              height: 48,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              decoration: BoxDecoration(
                color: AppColors.mapOverlayLight,
                borderRadius: BorderRadius.circular(8),
              ),
              child: GestureDetector(
                onTap: () {
                  // Add your delete account logic here
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.delete_outline,
                      color: AppColors.primary,
                      size: 24,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Delete Account',
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, {VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.darkHeadline,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                size: 24,
              ),
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                letterSpacing: 0,
                fontSize: 16,
                color: Color(0xFF141414),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
