// import 'package:drosak_m_app/controller/splash_screen/splash_screen_controller.dart';
// import 'package:drosak_m_app/core/resources/assets_values_mananger.dart';
// import 'package:drosak_m_app/core/resources/colors_manager.dart';
// import 'package:flutter/material.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen>
//     with SingleTickerProviderStateMixin {
//  late SplashScreenController _controller;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//    _controller=SplashScreenController(context, this);
//   }

//   @override
//   void dispose() {
//    _controller.disposeController();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorManager.kBlackColor,
//       body: SizedBox(
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SlideTransition(
//               position: _controller.animationTop,
//               child: Image.asset(AssetsValuesManager.kSplashBorderImage),
//             ),
//             Align(child: Image.asset(AssetsValuesManager.kLogoImage)),
//             Align(
//                 alignment: AlignmentDirectional.bottomEnd,
//                 child: SlideTransition(
//                     position: _controller.animationBottom,
//                     child: Image.asset(
//                         AssetsValuesManager.kSplashBorderImageBottom))),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:drosak/src/core/resources/assets_values_mananger.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top-left border image
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              AssetsValuesManager.kSplashBorderImage,
              fit: BoxFit.cover,
            ),
          ),

          // Center logo
          Center(
            child: Image.asset(
              AssetsValuesManager.kLogoImage,
              fit: BoxFit.contain,
            ),
          ),

          // Bottom-right border image
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              AssetsValuesManager.kSplashBorderImageBottom,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
