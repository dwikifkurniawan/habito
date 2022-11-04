import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:habito/landing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class AddGoalPage extends StatefulWidget {
  AddGoalPage({Key? key}) : super(key: key);

  // final String title;

  @override
  _AddGoalPageState createState() => _AddGoalPageState();
}

class _AddGoalPageState extends State<AddGoalPage> {
  final TextEditingController judulController = TextEditingController();
  final TextEditingController deskripsiController = TextEditingController();
  bool visible = false;
  String _errorMessageUser = '';
  String _errorMessageDeskripsi = '';
  final String sUrl = "https://mysimrs.com/api/";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // status bar color
    ));
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Center(
                      child: Text(
                        "Buat Goal Baru",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFDD5C1D)),
                      ),
                    ),
                  ],
                ),
                Visibility(
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    visible: visible,
                    child: Container(child: CircularProgressIndicator())),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Judul',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                          controller: judulController..text = '',
                          style: TextStyle(fontSize: 18),
                          obscureText: false,
                          decoration: InputDecoration(
                            errorText: _errorMessageUser == ""
                                ? null
                                : _errorMessageUser,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.orange.shade100,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.orange.shade100,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                  width: 2, color: Colors.red.shade200),
                            ),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Deskripsi',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                          controller: deskripsiController..text = '',
                          style: TextStyle(fontSize: 18, height: 5.0),
                          obscureText: false,
                          decoration: InputDecoration(
                            errorText: _errorMessageUser == ""
                                ? null
                                : _errorMessageUser,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.orange.shade100,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.orange.shade100,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                  width: 2, color: Colors.red.shade200),
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.shade200,
                              offset: Offset(2, 4),
                              blurRadius: 5,
                              spreadRadius: 2)
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xfffbb448), Color(0xfff7892b)])),
                    child: Text(
                      'Selesai',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  onTap: () {
                    if (judulController.text.isEmpty) {
                      setState(() {
                        _errorMessageUser = 'Judul cannot be empty';
                      });
                      return;
                    } else if (deskripsiController.text.isEmpty) {
                      setState(() {
                        _errorMessageDeskripsi = 'Deskripsi cannot be empty';
                      });
                      return;
                    }
                    // replace navigation to home page
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LandingPage()),
                    );
                  },
                  // onTap: _cekLogin,
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
