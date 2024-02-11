import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class ProfileDetailsScreen extends StatefulWidget {
  final String? name;
  final String? age;
  const ProfileDetailsScreen({
    super.key,
    this.name,
    this.age,
  });

  @override
  State<ProfileDetailsScreen> createState() => _ProfileDetailsScreenState();
}

class _ProfileDetailsScreenState extends State<ProfileDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("profile Detail Screen")),
        body: Center(
            child: Column(
          children: [
            InkWell(
              onTap: () {
                context.router.pop(); 
              },
              child: Text(widget.name!),
            ),
            Text(widget.age!),
          ],
        )));
  }
}
