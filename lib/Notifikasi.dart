import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'theme_s.dart';

class Notifikasi extends StatefulWidget {
  const Notifikasi({Key? key}) : super(key: key);

  @override
  _NotifikasiState createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  List<int> jumlah_jenis_barang = [1, 2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // backgroundColor: Color(0xFF554AF0),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: InkWell(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: primaryOrange,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: primaryOrange,
                          size: 24,
                        ),
                        onPressed: () {},
                        padding: EdgeInsets.only(left: 10),
                      ),
                      Text(
                        'Notifikasi',
                        style: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          color: textWhite,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          color: primaryOrange,
                          size: 24,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                        padding: EdgeInsets.only(right: 10),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        for (var i in jumlah_jenis_barang)
                          Container(
                            height: 127,
                            margin: EdgeInsets.only(
                                bottom: 20, left: 20, right: 20),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: lightGrey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(child: SizedBox()),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("Notifikasi  " + i.toString(),
                                            style: heading2Black),
                                        Expanded(child: SizedBox()),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_today,
                                            color: Colors.black, size: 15),
                                        SizedBox(width: 5),
                                        Text("Released : ", style: regular14pt),
                                        Text("xx-xx-xxxx",
                                            style: regular14pt), //ISI TANGGAL
                                        Expanded(child: SizedBox()),
                                        ElevatedButton(
                                            child: Text(
                                              ("Lihat ").toUpperCase(),
                                              style: regular12ptpink.copyWith(
                                                  color: textWhite),
                                              textAlign: TextAlign.center,
                                            ),
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(primaryOrange),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5)),
                                                ))),
                                            onPressed: () => null),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
