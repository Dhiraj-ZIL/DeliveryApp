// 🐦 Flutter imports:
import 'package:core/core.dart';
import 'package:flashquiz_app/core/extensions/build_context_ext_theme.dart';
import 'package:flashquiz_app/core/models/app_theme.dart';
import 'package:flashquiz_app/core/ui/theme/theme_cubit/theme_cubit.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ChangeThemePage extends StatelessWidget {
  const ChangeThemePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ...AppThemeData.values.map(
              (mode) {
                return ActionTile(
                  title: switch (mode) {
                    AppThemeData.dark => "Dark Mode",
                    AppThemeData.light => "Light Mode",
                    AppThemeData.system => "System Default",
                  },
                  onTap: () {
                    context.read<ThemeCubit>().update(mode);
                  },
                  trailing: SizedBox(
                    height: 24.sp,
                    child: BlocBuilder<ThemeCubit, AppThemeData>(
                      builder: (context, prefTheme) {
                        return Radio(
                          value: mode,
                          groupValue: prefTheme,
                          onChanged: (v) {
                            context.read<ThemeCubit>().update(mode);
                          },
                        );
                      },
                    ),
                  ),
                );
              },
            ),
            Text(
              "We’ll adjust your appearance based on your device’s system settings.",
              style: context.bodyMedium?.copyWith(color: context.subtext),
            )
          ]),
        ),
      ),
    );
  }
}
