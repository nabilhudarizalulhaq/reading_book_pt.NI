import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:nus_infrastrukture/screen/pages/login/login_page.dart';
import 'package:nus_infrastrukture/screen/widget/button_widget.dart';
import 'package:nus_infrastrukture/screen/widget/form_widget.dart';
import 'package:nus_infrastrukture/share/share.dart';

class RegeisterPage extends StatelessWidget {
  const RegeisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: ListView(
        padding: const EdgeInsets.all(
          30,
        ),
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svgs/book1.svg',
                  height: 250,
                  width: 250,
                ),
                Text(
                  'Membaca adalah jendela dunia \n marilah membaca',
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 45,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: white,
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Note : Email input
                      FormWidget(
                        title: 'Name',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      // Note : Password input
                      FormWidget(
                        title: 'Email Address',
                        obscureText: true,
                      ),
                      FormWidget(
                        title: 'Password',
                        obscureText: true,
                      ),
                      FormWidget(
                        title: 'Confirmasi Password',
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const CustomFilledButton(
                  title: 'login',
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Sudah punya akun?',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(const LoginPage());
                  },
                  child: Text(
                    'Login Akun',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
