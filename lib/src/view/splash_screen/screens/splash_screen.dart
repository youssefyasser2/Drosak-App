import 'package:drosak/src/core/resources/assets_values_mananger.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Text("body of splash screen"),
        )
        //  Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     // Top-left border image
        //     Align(
        //       alignment: Alignment.topLeft,
        //       child: Image.asset(
        //         AssetsValuesManager.kSplashBorderImage,
        //         fit: BoxFit.cover,
        //       ),
        //     ),

        //     // Center logo
        //     Center(
        //       child: Image.asset(
        //         AssetsValuesManager.kLogoImage,
        //         fit: BoxFit.contain,
        //       ),
        //     ),

        //     // Bottom-right border image
        //     Align(
        //       alignment: Alignment.bottomRight,
        //       child: Image.asset(
        //         AssetsValuesManager.kSplashBorderImageBottom,
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //   ],
        // ),
        );
  }
}
