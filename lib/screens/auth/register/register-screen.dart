// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nien_luan_2/widgets/auth/form-login.dart';
import 'package:nien_luan_2/widgets/auth/form-register.dart';
import 'package:nien_luan_2/widgets/auth/logo-header.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/bg-auth-5.jpg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              const Positioned(top: 25, child: LogoHeader()),
              const FormRegister(),
            ],
          ),
        ),
      ),
    );
  }
}
