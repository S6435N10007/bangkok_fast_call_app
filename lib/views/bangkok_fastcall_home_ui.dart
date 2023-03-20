import 'package:bangkok_fast_call_app/views/bangkok_fastcall_detail_ui.dart';
import 'package:bangkok_fast_call_app/views/models/police_station_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BangkokFastcallHomeUI extends StatefulWidget {
  const BangkokFastcallHomeUI({super.key});

  @override
  State<BangkokFastcallHomeUI> createState() => _BangkokFastcallHomeUIState();
}

class _BangkokFastcallHomeUIState extends State<BangkokFastcallHomeUI> {
  List<PoliceStationList> policestationlist = [
    PoliceStationList(
      PLname: 'คลองตัน',
      PLPhone: '0231400413',
      PLWeb: 'khlongtan.metro.police.go.th',
      PLFacebook: 'KHLONGTANPOLICE',
      PLLatitude: '13.7407016',
      PLLongtitude: '100.6151304',
    ),
    PoliceStationList(
      PLname: 'คันนายาว',
      PLPhone: '025109791',
      PLWeb: 'khannayao.metro.police.go.th',
      PLFacebook: 'KannayaoPoliceStation',
      PLLatitude: '13.8525913',
      PLLongtitude: '100.6655363',
    ),
    PoliceStationList(
      PLname: 'โคกคราม',
      PLPhone: '025090666',
      PLWeb: 'khokkram-policestation.com',
      PLFacebook: 'www.facebook.com',
      PLLatitude: '13.8308395',
      PLLongtitude: '100.6453026',
    ),
    PoliceStationList(
      PLname: 'ชนะสงคราม',
      PLPhone: '022822323',
      PLWeb: 'chanasongkhram.metro.police.go.th',
      PLFacebook: 'ChanaPolice',
      PLLatitude: '13.7585195',
      PLLongtitude: '100.492928',
    ),
    PoliceStationList(
      PLname: 'ดินแดง',
      PLPhone: '022467706',
      PLWeb: 'dindaeng.metro.police.go.th',
      PLFacebook: 'dindaengpolice',
      PLLatitude: '13.7714636',
      PLLongtitude: '100.5547541',
    ),
    PoliceStationList(
      PLname: 'ดุสิต',
      PLPhone: '022415044',
      PLWeb: 'dusit.metro.police.go.th',
      PLFacebook: 'dusit.police',
      PLLatitude: '13.7774159',
      PLLongtitude: '100.5187155',
    ),
    PoliceStationList(
      PLname: 'นางเลิ้ง',
      PLPhone: '022813002',
      PLWeb: 'nanglerng.metro.police.go.th',
      PLFacebook: 'nanglerngpolicestation',
      PLLatitude: '13.7576125',
      PLLongtitude: '100.5053118',
    ),
    PoliceStationList(
      PLname: 'บางโพ',
      PLPhone: '025850638',
      PLWeb: 'bangpho.metro.police.go.th',
      PLFacebook: 'bangpho.division1',
      PLLatitude: '13.8081812',
      PLLongtitude: '100.5167258',
    ),
    PoliceStationList(
      PLname: 'พญาไท',
      PLPhone: '023546957',
      PLWeb: 'phayathai.metro.police.go.th',
      PLFacebook: '',
      PLLatitude: '13.7591794',
      PLLongtitude: '100.5288677',
    ),
    PoliceStationList(
      PLname: 'มักกะสัน',
      PLPhone: '023181821',
      PLWeb: 'makkasan.metro.police.go.th',
      PLFacebook: '',
      PLLatitude: '13.7507919',
      PLLongtitude: '100.5725033',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        title: Text(
          'Police Fast Call',
          style: GoogleFonts.kanit(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.width * 0.05,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Image.asset(
              'assets/images/banner.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BangkokFastcallDetailUI(
                          policeStationList: policestationlist[index],
                        ),
                      ),
                    );
                  },
                  title: Text(
                    'สถานีตำรวจนครบาล${policestationlist[index].PLname}',
                    style: GoogleFonts.kanit(),
                  ),
                  subtitle: Text(
                    'Tel : ${policestationlist[index].PLPhone}',
                    style: GoogleFonts.kanit(),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                  ),
                );
              },
              separatorBuilder: (context, index) => Divider(
                color: Colors.black,
              ),
              itemCount: policestationlist.length,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
        ],
      ),
    );
  }
}
