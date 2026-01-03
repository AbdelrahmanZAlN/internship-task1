import 'package:flutter/material.dart';

import '../../core/utils/assets.dart';

class ThirdTab extends StatelessWidget {
  const ThirdTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 12),
          width: MediaQuery.of(context).size.width  * (137.99254 / 393),
          height: MediaQuery.of(context).size.width  * (108.35398 / 393),
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Image.asset(
            AssetsData.logoPng,
            height: 30,
          ),
        ),

        Expanded(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: .symmetric(horizontal: 16),
                margin: .symmetric(horizontal: 24),
                width: MediaQuery.of(context).size.width * 0.8786,
                height: MediaQuery.of(context).size.height * 0.541,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  image: DecorationImage(
                    image: AssetImage(AssetsData.onboardingSecondPng),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.white70,
                      BlendMode.dstATop,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
              ),

              Positioned(
                top: 20,
                left: 16,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFD7D1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Icon(Icons.favorite, color: Colors.white, size: 24),
                ),
              ),

              Positioned(
                bottom: 28.7,
                left: 24,
                right: 24,
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30) ,bottomRight: Radius.circular(30)),
                    border: Border.all(color: Colors.white.withOpacity(0.3)),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 15),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color(0xFFD1B3FF),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(Icons.palette_outlined, color: Colors.white),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 8,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              height: 8,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ),
              ),

              Positioned(
                bottom: -14,
                right: 14,
                child: Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [ Color(0xFFffd6e8),Color(0xFFb9a0ff),],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

            ],
          ),
        ),
        SizedBox(

          height: MediaQuery.of(context).size.height * 0.17,
        )
      ],
    );
  }
}