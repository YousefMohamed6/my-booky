import 'package:bookly/constants.dart';
import 'package:bookly/features/home/views/home_view.dart';
import 'package:bookly/features/splash/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeView.id: (context) => const HomeView(),
      },
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimryColor),
    );
  }
}
