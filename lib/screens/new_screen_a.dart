import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NewScreenWidget extends StatelessWidget {
  const NewScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("new Screen"),
      ),
      body: SafeArea(
        child: Center(
          child: InkWell(
            onTap: () {
              context.router.pop();
            },
            child: const Text(
              ("new screen"),
            ),
          ),
        ),
      ),
    );
  }
}
