import 'package:bangkok_fast_call_app/views/bangkok_fastcall_home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BangkokFastcallSplashUI extends StatefulWidget {
  const BangkokFastcallSplashUI({super.key});

  @override
  State<BangkokFastcallSplashUI> createState() =>
      _BangkokFastcallSplashUIState();
}

class _BangkokFastcallSplashUIState extends State<BangkokFastcallSplashUI> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BangkokFastcallHomeUI(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/Police_logo.png',
                  ),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Colors.white,
                  width: 5,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            Text(
              'สายด่วน สำนักงานตำรวจแห่งชาติ',
              style: GoogleFonts.kanit(
                color: Colors.brown[900],
                fontSize: MediaQuery.of(context).size.width * 0.05,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              'เหตุด่วน เหตุฉุกเฉิน\nPolice Fast Call',
              style: GoogleFonts.itim(
                color: Colors.brown[900],
                fontSize: MediaQuery.of(context).size.width * 0.05,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            CircularProgressIndicator(
              color: Colors.black,
              strokeWidth: MediaQuery.of(context).size.width * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
