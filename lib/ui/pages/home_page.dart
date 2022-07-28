import 'package:flutter/material.dart';
import 'package:flutter_e_wallet_app/ui/pages/topup_page.dart';
import 'package:flutter_e_wallet_app/ui/widgets/custom_icon_payment.dart';
import 'package:flutter_e_wallet_app/ui/widgets/custom_last_transaction.dart';

import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        // margin: EdgeInsets.symmetric(
        //   horizontal: 30,
        //   vertical: 30,
        // ),
        margin: EdgeInsets.all(30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, Agus Susanto',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Welcome',
                    style: greyTextStyle.copyWith(
                      fontSize: 13,
                      fontWeight: regular,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/user_profile.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget balanceCard() {
      return Container(
        width: 315,
        height: 225,
        margin: EdgeInsets.symmetric(horizontal: 30),
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/balance_card.png',
            ),
          ),
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Balance',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
                Text(
                  'Rp. 300,000',
                  style: whiteTextStyle.copyWith(
                    fontSize: 30,
                    fontWeight: semiBold,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      margin: EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/icon_scan.png',
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Scan',
                      style: whiteTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 45,
                        height: 45,
                        margin: EdgeInsets.only(bottom: 12),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icon_pay.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Pay',
                      style: whiteTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => TopUpPage()),
                        // );
                        Navigator.pushNamed(context, '/topup');
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        margin: EdgeInsets.only(bottom: 12),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icon_topup.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Top Up',
                      style: whiteTextStyle.copyWith(
                        fontWeight: medium,
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

    Widget payBill() {
      return Container(
        width: 375,
        margin: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pay Bill',
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomPaymentIcon(
                    imageUrl: 'assets/icon_hp.png', txtTitle: 'Phone'),
                CustomPaymentIcon(
                    imageUrl: 'assets/icon_data.png', txtTitle: 'Data'),
                CustomPaymentIcon(
                    imageUrl: 'assets/icon_invest.png', txtTitle: 'Invest'),
                CustomPaymentIcon(
                    imageUrl: 'assets/icon_game.png', txtTitle: 'Game'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomPaymentIcon(
                    imageUrl: 'assets/icon_inet.png', txtTitle: 'Internet'),
                CustomPaymentIcon(
                    imageUrl: 'assets/icon_pln.png', txtTitle: 'PLN'),
                CustomPaymentIcon(
                    imageUrl: 'assets/icon_pdam.png', txtTitle: 'PDAM'),
                CustomPaymentIcon(
                    imageUrl: 'assets/icon_bpjs.png', txtTitle: 'BPJS'),
              ],
            ),
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
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/history');
                  },
                  child: Text(
                    'Details',
                    style: blueTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
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
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        balanceCard(),
        payBill(),
        lastTransasction(),
      ],
    );
  }
}
