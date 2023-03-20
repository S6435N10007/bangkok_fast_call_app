import 'package:bangkok_fast_call_app/views/models/police_station_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class BangkokFastcallDetailUI extends StatefulWidget {
  PoliceStationList? policeStationList;
  BangkokFastcallDetailUI({super.key, this.policeStationList});
  @override
  State<BangkokFastcallDetailUI> createState() =>
      _BangkokFastcallDetailUIState();
}

class _BangkokFastcallDetailUIState extends State<BangkokFastcallDetailUI> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.brown[900],
        title: Text(
          'สถานีตำรวจนครบาล' + widget.policeStationList!.PLname + ' ',
          style: GoogleFonts.kanit(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.width * 0.05,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                height: MediaQuery.of(context).size.width * 0.5,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/Police_logo.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.brown,
                    width: 5,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                ),
                child: ListTile(
                  onTap: () {
                    _makePhoneCall(widget.policeStationList!.PLPhone);
                  },
                  leading: Icon(
                    FontAwesomeIcons.phone,
                    color: Colors.white,
                  ),
                  title: Text(
                    'เบอร์โทร : ' + widget.policeStationList!.PLPhone,
                    style: GoogleFonts.kanit(
                      color: Colors.white,
                    ),
                  ),
                  tileColor: Colors.brown[800],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                ),
                child: ListTile(
                  onTap: () {
                    _launchInBrowser(
                      Uri.parse('https://www.facebook.com/' +
                          widget.policeStationList!.PLFacebook),
                    );
                  },
                  leading: Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Facebook : ' + widget.policeStationList!.PLFacebook,
                    style: GoogleFonts.kanit(
                      color: Colors.white,
                    ),
                  ),
                  tileColor: Colors.brown[800],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                ),
                child: ListTile(
                  onTap: () {
                    _launchInBrowser(
                      Uri.parse(widget.policeStationList!.PLWeb),
                    );
                  },
                  leading: Icon(
                    FontAwesomeIcons.globe,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Website : ' + widget.policeStationList!.PLWeb,
                    style: GoogleFonts.kanit(
                      color: Colors.white,
                    ),
                  ),
                  tileColor: Colors.brown[800],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                ),
                child: ListTile(
                  onTap: () {
                    _launchInBrowser(
                      Uri.parse(
                          'https://www.google.com/maps/search/?api=1&query=' +
                              widget.policeStationList!.PLLatitude +
                              ',' +
                              widget.policeStationList!.PLLongtitude),
                    );
                  },
                  leading: Icon(
                    FontAwesomeIcons.mapLocation,
                    color: Colors.white,
                  ),
                  title: Text(
                    'สถานที่ตั้ง : Let\'s go',
                    style: GoogleFonts.kanit(
                      color: Colors.white,
                    ),
                  ),
                  tileColor: Colors.brown[800],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
