import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:schooler_lite/utils/mediaquery/mediaquery_provider.dart';
import 'package:schooler_lite/utils/mediaquery/mediaquery_updater.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Ensure the context is mounted before navigating
    Future.delayed(const Duration(seconds: 3), () {
      if (context.mounted) {
        context.go('/home');
      }
    });

    final mediaQueryData = ref.watch(mediaQueryProvider);
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      body: Stack(
        alignment: Alignment.center,
        children: [
          const MediaQueryUpdater(),
          Positioned(
            left: -240,
            top: 96,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Transform.rotate(
                angle: 3.14,
                child: Container(
                  width: 600,
                  height: 520,
                  decoration: const ShapeDecoration(
                    color: Color(0x11FFFF09),
                    shape: OvalBorder(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 60,
            top: 360,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Transform.rotate(
                angle: 3.14,
                child: Container(
                  width: 600,
                  height: 520,
                  decoration: const ShapeDecoration(
                    color: Color(0x11FF4409),
                    shape: OvalBorder(),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: SvgPicture.asset('assets/svg/schooler_logo.svg'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset('assets/svg/lunaiz_logo.svg'),
              SizedBox(
                height: 20 + mediaQueryData.padding.bottom,
              ),
            ],
          )
        ],
      ),
    );
  }
}
