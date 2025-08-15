import 'package:flashquiz_app/core/di/dependency_injection.dart';
import 'package:flashquiz_app/core/models/app_theme.dart';
import 'package:flashquiz_app/core/router/app_router.dart';
import 'package:flashquiz_app/core/ui/theme/app_theme.dart';
import 'package:flashquiz_app/core/ui/theme/theme_cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final appRouter = AppRouter();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp();

  //dependency injection
  await configureDependencies();

  runApp(MyApp(themeMode: AppThemeData.dark));
}

class MyApp extends StatelessWidget {
  final AppThemeData themeMode;

  const MyApp({super.key, required this.themeMode});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => get<ThemeCubit>()..update(themeMode),
        ),
      ],
      child: BlocBuilder<ThemeCubit, AppThemeData>(
        builder: (context, prefTheme) {
          return ScreenUtilInit(
              designSize: const Size(430, 932),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (_, child) {
                return MaterialApp.router(
                  title: 'DeliveryApp App',
                  debugShowCheckedModeBanner: false,
                  theme: AppTheme.light,
                  darkTheme: AppTheme.dark,
                  themeMode: ThemeMode.light,

                  // switch (prefTheme) {
                  //   AppThemeData.dark => ThemeMode.dark,
                  //   AppThemeData.light => ThemeMode.light,
                  //   AppThemeData.system => ThemeMode.system,
                  // },
                  routerConfig: appRouter.config(),
                  builder: (context, child) {
                    return MediaQuery(
                      data: MediaQuery.of(context)
                          .copyWith(textScaler: TextScaler.linear(1)),
                      child: child!,
                    );
                  },
                );
              });
        },
      ),
    );
  }
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Firebase Setup Test',
//       home: const FirebaseTestScreen(),
//     );
//   }
// }

// class FirebaseTestScreen extends StatefulWidget {
//   const FirebaseTestScreen({super.key});
//   @override
//   State<FirebaseTestScreen> createState() => _FirebaseTestScreenState();
// }

// class _FirebaseTestScreenState extends State<FirebaseTestScreen> {
//   String? remoteConfigValue;
//   User? user;

//   @override
//   void initState() {
//     super.initState();
//     _testFirebase();
//   }

//   Future<void> _testFirebase() async {
//     // Anonymous login
//     final authResult = await FirebaseAuth.instance.signInAnonymously();
//     user = authResult.user;

//     // Remote Config fetch
//     final remoteConfig = FirebaseRemoteConfig.instance;
//     await remoteConfig
//         .setDefaults({'welcome_message': 'Hello from Remote Config!'});
//     await remoteConfig.fetchAndActivate();
//     setState(() {
//       remoteConfigValue = remoteConfig.getString('welcome_message');
//       remoteConfigValue = remoteConfig.getString('hardness_level');
//       remoteConfigValue = remoteConfig.getString('show_leadership_board');

//       print('Remote Config: ${remoteConfig.getString('welcome_message')}');
//       print('Remote Config: ${remoteConfig.getString('hardness_level')}');
//       print(
//           'Remote Config: ${remoteConfig.getString('show_leadership_board')}');
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Firebase Test")),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Text("User ID: ${user?.uid ?? 'Loading...'}"),
//             const SizedBox(height: 20),
//             Text("Remote Config: ${remoteConfigValue ?? 'Loading...'}"),
//             const SizedBox(height: 20),
//             Expanded(
//               child: FirestoreListView(
//                 query: FirebaseFirestore.instance.collection('questions'),
//                 itemBuilder: (context, snapshot) {
//                   final data = snapshot.data();
//                   return ListTile(
//                       title: Text(data['actual_answer'] ?? 'Unnamed'));
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
