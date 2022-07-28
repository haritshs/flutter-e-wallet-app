import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_e_wallet_app/cubit/page_cubit.dart';
import 'package:flutter_e_wallet_app/shared/theme.dart';

class CustomButtonNavigation extends StatelessWidget {
  final String imageUrl;
  final int index;
  const CustomButtonNavigation({
    Key? key,
    required this.imageUrl,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            width: 20,
            height: 20,
            color: context.read<PageCubit>().state == index
                ? kPrimaryBlueColor
                : kPrimarySubBlueColor,
          ),
        ],
      ),
    );
  }
}
