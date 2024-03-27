import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nien_luan_2/firebase_options.dart';
import 'package:nien_luan_2/screens/auth/auth-screen.dart';
import 'package:nien_luan_2/screens/auth/forgot-password/forgot-password-screen.dart';
import 'package:nien_luan_2/screens/auth/register/register-screen.dart';
import 'package:nien_luan_2/screens/cart/cart-screen.dart';
import 'package:nien_luan_2/screens/home/home-screen.dart';
import 'package:nien_luan_2/screens/auth/login/login-screen.dart';
import 'package:nien_luan_2/screens/product/product-screen.dart';
import 'package:nien_luan_2/screens/profile/profile-screen.dart';
import 'package:nien_luan_2/screens/search/search-screen.dart';
import 'package:nien_luan_2/screens/splash/splash-screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // unknownRoute:
      //     GetPage(name: '/notfound', page: () => const UnknownRoutePage()),
      getPages: [
        GetPage(name: '/home', page: () => const HomeScreen()),
        GetPage(name: '/auth/login', page: () => const LoginScreen()),
        GetPage(name: '/auth', page: () => const AuthScreen()),
        GetPage(name: '/auth/register', page: () => const RegisterScreen()),
        GetPage(
            name: '/auth/forgot-password',
            page: () => const ForgotPasswordScreen()),
        GetPage(name: '/cart', page: () => const CartScreen()),
        GetPage(name: '/product', page: () => const ProductScreen()),
        GetPage(name: '/search', page: () => const SearchScreen()),
        GetPage(name: '/profile', page: () => const ProfileScreen()),
        // GetPage(
        //   name: '/cart',
        //   page: () => const CartScreen(),
        //   transition: Transition.zoom,
        // )
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
