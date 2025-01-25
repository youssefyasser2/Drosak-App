import 'dart:async';

import 'package:drosak/src/core/resources/assets_values_mananger.dart';
import 'package:drosak/src/core/resources/colors_manager.dart';
import 'package:drosak/src/core/resources/routes_mananger.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late Timer _timer;
  late AnimationController _animationController;
  late Animation<Offset> _topImageAnimation;
  late Animation<Offset> _bottomImageAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize animation controller
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    // Initialize animations for top and bottom images
    _topImageAnimation = Tween<Offset>(
      begin: const Offset(0.0, -1.0), 
      end: Offset.zero, 
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.fastOutSlowIn,
    ));

    _bottomImageAnimation = Tween<Offset>(
      begin: const Offset(0.0, 1.0), 
      end: Offset.zero, 
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.fastOutSlowIn,
    ));

    // Start animation
    _animationController.forward();

    // Navigate to the next screen after 3 seconds
    _timer = Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RoutesName.kOnBoardingScreenRoute);
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.kBlackColor,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top-left border image with animation (comes down from above)
            SlideTransition(
              position: _topImageAnimation,
              child: Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  AssetsValuesManager.kSplashBorderImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Center logo (no animation)
            Center(
              child: Image.asset(
                AssetsValuesManager.kLogoImage,
                fit: BoxFit.contain,
              ),
            ),

            // Bottom-right border image with animation (comes up from below)
            SlideTransition(
              position: _bottomImageAnimation,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  AssetsValuesManager.kSplashBorderImageBottom,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}