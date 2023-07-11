import 'package:flutter/material.dart';
import 'package:tctk/constants/gaps.dart';
import 'package:tctk/constants/sizes.dart';

void main() {
  runApp(const TikTokApp());
}

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok Clone',
      theme: ThemeData(
        primaryColor: const Color(0xFFE9435A),
      ),
      home: Padding(
        padding: const EdgeInsets.all(Sizes.size14),
        child: Container(
          child: const Row(children: [
            Text('hello'),
            Gaps.h20,
            Text('helloee'),
          ]),
        ),
      ),
    );
  }
}
