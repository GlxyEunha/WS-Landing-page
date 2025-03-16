import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({
    Key? key,
    this.imageHeight = 380.0,
    this.circleRadius = 180.0,
    this.imageWidth,
  }) : super(key: key);

  final double imageHeight;
  final double circleRadius;
  final double? imageWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: circleRadius,
          backgroundColor: const Color.fromARGB(255, 250, 250, 250),
        ),
        Image.asset(
          'assets/images/BEEF_STEAK.png',
          height: circleRadius * 2, // Menyesuaikan ukuran gambar agar berada di tengah lingkaran
          width: circleRadius * 2,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
