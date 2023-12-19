import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

@RoutePage()
class HomeDetailView extends StatelessWidget {
  const HomeDetailView({required this.id, super.key});
  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Detail Vİew'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 500,
                child: Assets.images.imgProgrammer.svg(package: 'gen'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
