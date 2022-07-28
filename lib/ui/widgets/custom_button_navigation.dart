import 'package:flutter/material.dart';

class CustomButtonNavigation extends StatelessWidget {
  final String imageUrl;
  const CustomButtonNavigation({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
          ),
        ),
      ],
    );
  }
}
