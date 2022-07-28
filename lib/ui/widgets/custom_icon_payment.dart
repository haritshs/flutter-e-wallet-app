import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomPaymentIcon extends StatelessWidget {
  final String imageUrl;
  final String txtTitle;
  const CustomPaymentIcon({
    Key? key,
    required this.imageUrl,
    required this.txtTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 45,
          height: 45,
          margin: EdgeInsets.only(top: 12, bottom: 12),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imageUrl,
              ),
            ),
          ),
        ),
        Text(
          txtTitle,
          style: blackTextStyle.copyWith(
            fontSize: 12,
            fontWeight: regular,
          ),
        ),
      ],
    );
  }
}
