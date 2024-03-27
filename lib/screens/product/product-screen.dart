import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nien_luan_2/utils/utils.dart';
import 'package:nien_luan_2/widgets/product/banner.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const BannerProduct(),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "TRENDING THIS WEEK",
                    style: GoogleFonts.roboto(),
                  ),
                  GestureDetector(
                    onTap: () {
                      showSnackbar(message: "message");
                    },
                    child: const Text(
                      "VIEW ALL",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
