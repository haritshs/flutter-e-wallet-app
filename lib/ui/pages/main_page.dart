import 'package:flutter/material.dart';
import 'package:flutter_e_wallet_app/ui/pages/history_page.dart';
import 'package:flutter_e_wallet_app/ui/pages/home_page.dart';
import 'package:flutter_e_wallet_app/ui/widgets/custom_button_navigation.dart';

import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget buttonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 85,
          decoration: BoxDecoration(
            color: kWhiteTextColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtonNavigation(
                imageUrl: 'assets/nav_icon_home.png',
              ),
              CustomButtonNavigation(
                imageUrl: 'assets/nav_icon_history.png',
              ),
              CustomButtonNavigation(
                imageUrl: 'assets/nav_icon_notif.png',
              ),
              CustomButtonNavigation(
                imageUrl: 'assets/nav_icon_profile.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          buildContent(),
          buttonNavigation(),
        ],
      ),
    );
  }
}
