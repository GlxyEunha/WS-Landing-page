import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HeroText extends StatelessWidget {
  const HeroText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CappucinoTitle(),
        SizedBox(height: 40.0),
        AboutCappucino(),
        SizedBox(height: 20.0),
        CappucinoPrice(),
        SizedBox(height: 10.0),
        BuyNowButton(),
      ],
    );
  }
}

class BuyNowButton extends StatelessWidget {
  const BuyNowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 150.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: const Color.fromARGB(221, 255, 255, 255),
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Buy now",
            style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 16.0,
              // fontWeight: FontWeight.bold,
            ),
          ),
          Icon(Icons.navigate_next_rounded,
              color: Colors.deepOrangeAccent, size: 30.0),
        ],
      ),
    );
  }
}

class CappucinoPrice extends StatelessWidget {
  const CappucinoPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      "\$8.60",
      style: TextStyle(
        color: Colors.black,
        fontSize: 30.0,
        fontWeight: FontWeight.w700,
        fontFamily: 'Santana',
      ),
    );
  }
}

class AboutCappucino extends StatelessWidget {
  const AboutCappucino({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      "Steak daging sapi yang lembut dan kaya protein di olah dengan cara di grill / dipanggang. Disajikan dengan kentang lokal, mix vegetable, mushroom dan brown sauce khas waroeng.",
      style: TextStyle(
        color: Colors.black,
        fontSize: 18.0,
      ),
    );
  }
}

class CappucinoTitle extends StatelessWidget {
  const CappucinoTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AutoSizeText(
      "Beef Steak",
      maxLines: 2,
      style: TextStyle(
        color: Colors.black,
        fontSize: 40.0,
        fontWeight: FontWeight.w900,
        fontFamily: 'Santana',
      ),
    );
  }
}
