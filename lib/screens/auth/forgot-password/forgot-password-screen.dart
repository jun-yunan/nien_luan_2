import 'package:flutter/material.dart';
import 'package:nien_luan_2/widgets/auth/form-forgot-password.dart';
import 'package:nien_luan_2/widgets/auth/logo-header.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              // alignment: Alignment.center,

              children: [
                Image.asset(
                  'assets/images/bg-auth-5.jpg',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height,
                ),
                // const Positioned(
                //   top: 25,
                //   child: LogoHeader(),
                // ),
                const FormForgotPassword()
              ],
            )),
      )),
    );
  }
}
