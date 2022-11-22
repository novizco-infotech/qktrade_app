import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:qktrade_app/constents/routes.dart';
import 'package:qktrade_app/constents/string.dart';
import 'package:qktrade_app/screens/report/report_tab_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const routeName = 'splash_tab';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.0, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.ease,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    navigateToNextPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff007BA4),
        body: Stack(
          children: [
            Center(
              child: Opacity(
                opacity: 0.4,
                child: SlideTransition(
                  position: _offsetAnimation,
                  child: circles(h: 400, w: 400),
                ),
              ),
            ),
            Positioned(
              bottom: 170,
              right: 170,
              child: Opacity(
                opacity: 0.4,
                child: SlideTransition(
                    textDirection: TextDirection.rtl,
                    position: _offsetAnimation,
                    child: circles(h: 300, w: 300)),
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      AppConstants.appName,
                      textStyle: const TextStyle(
                        fontSize: 32.0,
                        color: Colors.white,
                      ),
                      colors: [Colors.white, Colors.black],
                    )
                  ],
                ))
          ],
        ));
  }

  void navigateToNextPage() {
    Future.delayed(const Duration(seconds: 8), () {
      Navigator.pushReplacementNamed(context, ReportTabScreen.routeName);
    });
  }

  Container circles({required double h, required double w}) {
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(300)),
    );
  }
}
