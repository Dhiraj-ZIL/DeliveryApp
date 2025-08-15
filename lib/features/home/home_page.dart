import 'package:auto_route/auto_route.dart';
import 'package:flashquiz_app/core/router/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Home Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // context.router.pushNamed(OrderDetailsRoute.name);
          context.router.push(const OrderDetailsRoute());
        },
        child: const Icon(Icons.navigation),
      ),
    );
  }
}
