import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:habito/landing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:passwordfield/passwordfield.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  // final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool visible = false;
  String _errorMessageUser = '';
  String _errorMessagePassword = '';
  final String sUrl = "https://mysimrs.com/api/";

  @override
  void initState() {
    super.initState();
  }

  _cekLogin() async {
    setState(() {
      visible = true;
    });
    final prefs = await SharedPreferences.getInstance();
    var params = "slogin.php?username=" +
        userNameController.text +
        "&password=" +
        passwordController.text;

    try {
      var res = await http.get(Uri.parse(sUrl + params));
      if (res.statusCode == 200) {
        var response = json.decode(res.body);
        if (response['response_status'] == "OK") {
          prefs.setBool('slogin', true);
          setState(() {
            visible = false;
          });

          Navigator.of(context).pushNamedAndRemoveUntil(
              '/landing', (Route<dynamic> route) => false);
        } else {
          setState(() {
            visible = false;
          });
          _showAlertDialog(context, response['response_message']);
        }
      }
    } catch (e) {}
  }

  _showAlertDialog(BuildContext context, String err) {
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () => Navigator.pop(context),
    );
    AlertDialog alert = AlertDialog(
      title: Text("Error"),
      content: Text(err),
      actions: [
        okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
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
                      child: new Image.asset(
                        "assets/login.jpg",
                        height: 183.0,
                        width: 294.0,
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
                        'Email',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                          controller: userNameController..text = '',
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
                        'Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      PasswordField(
                        controller: passwordController..text = '',
                        passwordConstraint: r'.*.',
                        inputDecoration: PasswordDecoration(),
                        border: PasswordBorder(
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
                        ),
                        errorMessage: "Password cannot be empty",
                        // style: TextStyle(fontSize: 18),
                        // obscureText: _isObscure,
                        // decoration: InputDecoration(
                        //     border: InputBorder.none,
                        //     fillColor: Color(0xfff3f3f4),
                        //     filled: true,
                        //     suffixIcon: IconButton(
                        //         icon: Icon(_isObscure
                        //             ? Icons.visibility
                        //             : Icons.visibility_off),
                        //         onPressed: () {
                        //           setState(() {
                        //             _isObscure = !_isObscure;
                        //           });
                        //         })))
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
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
                      'Masuk',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  onTap: () {
                    if (userNameController.text.isEmpty) {
                      setState(() {
                        _errorMessageUser = 'Email cannot be empty';
                      });
                      return;
                    } else if (passwordController.text.isEmpty) {
                      setState(() {
                        _errorMessagePassword = 'Password cannot be empty';
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
