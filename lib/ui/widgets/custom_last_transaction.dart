import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomLastTransaction extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String date;
  final String time;
  final String nominal;
  const CustomLastTransaction({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.nominal,
    required this.time,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 305,
      //height: 107,
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kWhiteTextColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: blackTextStyle.copyWith(fontSize: 12, fontWeight: semiBold),
          ),
          Container(
            //width: 273,
            height: 1,
            margin: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(color: kDarkGreyTextColor),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 35,
                height: 35,
                margin: EdgeInsets.only(
                  bottom: 16,
                  right: 10,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      time,
                      style: greyTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    //margin: EdgeInsets.only(left: 100),
                    child: Row(
                      children: [
                        Text(
                          nominal,
                          style: blueTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
