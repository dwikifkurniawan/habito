import 'package:flutter/material.dart';
import 'package:habito/theme_s.dart';

class ListDataSekolah extends StatefulWidget {
  const ListDataSekolah({Key? key}) : super(key: key);

  @override
  _ListDataSekolahState createState() => _ListDataSekolahState();
}

class _ListDataSekolahState extends State<ListDataSekolah> {
  List<int> jumlah_sekolah = [1, 2, 3, 4, 5, 6];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Center(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                child: ListView(scrollDirection: Axis.vertical, children: [
                  for (var i in jumlah_sekolah)
                    Container(
                      margin: EdgeInsets.only(top: 1),
                      width: double.infinity,
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 1),
                              blurRadius: 0,
                              color: shadow)
                        ],
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Image.asset("assets/images/sample.png")
                                ],
                              ),
                              SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Sekolah " + i.toString(),
                                          style: bold14pt),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(i.toString() + " Username | ",
                                          style: regular12ptpurple),
                                      Text("DD/MM/YYYY",
                                          style: regular12ptpurple),
                                    ],
                                  ),
                                ],
                              ),
                              Expanded(child: SizedBox()),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      ElevatedButton(
                                          child: Text("LIHAT"),
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(primaryOrange),
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                              ))),
                                          onPressed: () => null),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
