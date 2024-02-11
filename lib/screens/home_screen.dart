import "package:auto_route/annotations.dart";
import "package:auto_router_example/routes/routes_imports.gr.dart";
import "package:auto_router_example/screens/profile_details_screen.dart";
import "package:auto_router_example/screens/profile_screen.dart";
import "package:flutter/material.dart";
import 'package:auto_route/auto_route.dart';


@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Go To detail page',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const ProfileScreen()),
          // );
          AutoRouter.of(context).push(const ProfileScreenRoute());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
