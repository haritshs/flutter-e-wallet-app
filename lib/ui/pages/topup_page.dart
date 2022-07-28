import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backButton() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/main');
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 9,
              height: 16,
              margin: EdgeInsets.only(top: 30, left: 30),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/arrow_left.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Top Up your wallet balance',
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Insert Amount (min. 10,000)',
              style: greyTextStyle.copyWith(fontSize: 13, fontWeight: regular),
            ),
          ],
        ),
      );
    }

    Widget inputSection() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 30),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Rp.',
                hintStyle: greyTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget chooseAmount() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose Amount',
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Instanly Choose Nominal',
              style: greyTextStyle.copyWith(fontSize: 13, fontWeight: regular),
            ),
          ],
        ),
      );
    }

    Widget btnAmount() {
      return Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, left: 30),
            width: 58,
            height: 38,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/label_10k.png'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 16),
            width: 61,
            height: 38,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/label_30k.png'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 16),
            width: 62,
            height: 38,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/label_50k.png'),
              ),
            ),
          ),
        ],
      );
    }

    Widget btnAmount2() {
      return Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, left: 30),
            width: 66,
            height: 38,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/label_100k.png'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 16),
            width: 66,
            height: 38,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/label_500k.png'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 16),
            width: 77,
            height: 38,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/label_1000k.png'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 16),
            width: 77,
            height: 38,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/label_2000k.png'),
              ),
            ),
          ),
        ],
      );
    }

    Widget SubmitButton() {
      return Container(
        width: 315,
        height: 55,
        margin: EdgeInsets.all(30),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: kPrimaryBlueColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            'Continue',
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 18,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteTextColor,
      body: ListView(
        children: [
          backButton(),
          title(),
          inputSection(),
          chooseAmount(),
          btnAmount(),
          btnAmount2(),
          SubmitButton(),
        ],
      ),
    );
  }
}
