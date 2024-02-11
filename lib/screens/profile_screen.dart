import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../routes/routes_imports.gr.dart';
import 'new_screen_a.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("profile Screen")),
      body: Center(
        child: ElevatedButton(
            child: const Text("goto details page"),
            onPressed: () {
              // AutoRouter.of(context)
              //     .push(ProfileDetailsScreenRoute(name: "anik", age: "25"));
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NewScreenWidget()),
            );
            }),
      ),
    );
  }
}
