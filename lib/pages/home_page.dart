import 'package:basic_flutter/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              Center(
                child: Text(
                  'Profile Picture',
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/mirai.png',
                      ),
                    )),
                // child: Image.asset(
                //   'assets/mirai.png',
                //   fit: BoxFit.cover,
                // ),
              ),
              SizedBox(height: 16),
              Text(
                'Kuriyama Mirai',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Spirit World Warrior',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: grayColor,
                ),
              ),
              SizedBox(height: 70),
              Wrap(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                spacing: 38,
                runSpacing: 40,
                children: [
                  Image.asset('assets/mirai_1.png', width: 80),
                  Image.asset('assets/mirai_2.png', width: 80),
                  Image.asset('assets/mirai_3.png', width: 80),
                  Image.asset('assets/mirai_4.png', width: 80),
                  Image.asset('assets/mirai_5.png', width: 80),
                  Image.asset('assets/mirai_6.png', width: 80),
                ],
              ),
              SizedBox(height: 70),
              Container(
                width: 224,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          padding: EdgeInsets.symmetric(vertical: 50),
                          height: 290,
                          color: whiteColor,
                          child: Column(
                            children: [
                              Text(
                                'Upload Photo',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 12),
                              Text(
                                'You are only able to change\nthe picture profile once',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: grayColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 30),
                              Container(
                                width: 224,
                                height: 55,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: orangeColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Continue',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: whiteColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    'Update Profile',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 76),
            ],
          ),
        ),
      ),
    );
  }
}
