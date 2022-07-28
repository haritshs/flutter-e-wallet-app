import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_e_wallet_app/cubit/page_cubit.dart';
import 'package:flutter_e_wallet_app/ui/pages/history_page.dart';
import 'package:flutter_e_wallet_app/ui/pages/home_page.dart';
import 'package:flutter_e_wallet_app/ui/pages/notification_page.dart';
import 'package:flutter_e_wallet_app/ui/pages/profile_page.dart';
import 'package:flutter_e_wallet_app/ui/widgets/custom_button_navigation.dart';

import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentindex) {
      switch (currentindex) {
        case 0:
          return HomePage();
        case 1:
          return HistoryPage();
        case 2:
          return NotificationPage();
        case 3:
          return ProfilePage();
        default:
          return HomePage();
      }
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
                index: 0,
              ),
              CustomButtonNavigation(
                imageUrl: 'assets/nav_icon_history.png',
                index: 1,
              ),
              CustomButtonNavigation(
                imageUrl: 'assets/nav_icon_notif.png',
                index: 2,
              ),
              CustomButtonNavigation(
                imageUrl: 'assets/nav_icon_profile.png',
                index: 3,
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: Stack(
            children: [
              buildContent(currentIndex),
              buttonNavigation(),
            ],
          ),
        );
      },
    );
  }
}
