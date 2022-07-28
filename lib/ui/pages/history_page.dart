import 'package:flutter/material.dart';
import 'package:flutter_e_wallet_app/ui/widgets/custom_last_transaction.dart';

import '../../shared/theme.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

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

    Widget balanceTitle() {
      return Container(
        width: 315,
        margin: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Balance',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            Text(
              'Rp. 300,000',
              style: blackTextStyle.copyWith(
                fontSize: 30,
                fontWeight: semiBold,
              ),
            )
          ],
        ),
      );
    }

    Widget filterDate() {
      return Container(
        margin: EdgeInsets.all(30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 70,
                height: 38,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/label_januari.png'),
                  ),
                ),
              ),
              Container(
                width: 70,
                height: 38,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/label_februari.png'),
                  ),
                ),
              ),
              Container(
                width: 70,
                height: 38,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/label_maret.png'),
                  ),
                ),
              ),
              Container(
                width: 88,
                height: 38,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/label_lastmonth.png'),
                  ),
                ),
              ),
              Container(
                width: 88,
                height: 38,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/label_thismonth.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget balanceExpense() {
      return Container(
        width: 315,
        //height: 110,
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
        ),
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/balance_card_2.png',
            ),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 45,
              height: 45,
              //margin: EdgeInsets.all(30),
              margin: EdgeInsets.only(left: 30, right: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_pay_history.png',
                  ),
                ),
              ),
            ),
            Container(
              //margin: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Monthly Expense',
                    style: whiteTextStyle.copyWith(fontWeight: regular),
                  ),
                  Text(
                    '- Rp. 1.250.000',
                    style: whiteTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 18),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget lastTransasction() {
      return Container(
        //width: 375,
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.only(
          bottom: 80,
        ),
        decoration: BoxDecoration(color: kBackgroundTextColor),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        'Last Transaction',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CustomLastTransaction(
              imageUrl: 'assets/icon_spotify.png',
              title: 'Spotify',
              nominal: '- Rp. 95.000',
              time: '09:42 AM',
              date: 'Today, May 15',
            ),
            CustomLastTransaction(
              imageUrl: 'assets/icon_transfer.png',
              title: 'Transfer',
              nominal: '- Rp. 150.000',
              time: '11:12 PM',
              date: 'Friday, May 14',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteTextColor,
      body: ListView(
        children: [
          backButton(),
          balanceTitle(),
          filterDate(),
          balanceExpense(),
          lastTransasction(),
        ],
      ),
    );
  }
}
