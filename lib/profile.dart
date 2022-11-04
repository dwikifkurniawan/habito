import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePageWidget extends StatefulWidget {
  const ProfilePageWidget({Key? key}) : super(key: key);

  @override
  _ProfilePageWidgetState createState() => _ProfilePageWidgetState();
}

class _ProfilePageWidgetState extends State<ProfilePageWidget> {
  @override
  void initState() {
    super.initState();
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          'https://picsum.photos/seed/18/600',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: SelectionArea(
                            child: Text(
                          'Dinda Wahyu',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: SelectionArea(
                            child: Text(
                          '@dindawr',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF9E9E9E),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFDD5C1D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFFDD5C1D),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SelectionArea(
                                  child: Text(
                                '8',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 16,
                                ),
                              )),
                              SelectionArea(
                                  child: Text(
                                'Goals',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.normal,
                                ),
                              )),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFFDD5C1D),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SelectionArea(
                                  child: Text(
                                '25',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 16,
                                ),
                              )),
                              SelectionArea(
                                  child: Text(
                                'Task',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.normal,
                                ),
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                      child: SelectionArea(
                          child: Text(
                        'Pengaturan',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFECEFF1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'Pengaturan Akun',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                  ),
                                )),
                              ),
                              IconButton(
                                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                  icon: FaIcon(FontAwesomeIcons.arrowRight,
                                      size: 16),
                                  onPressed: () {
                                    print("Pressed");
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFECEFF1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'Ubah Email',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                  ),
                                )),
                              ),
                              IconButton(
                                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                  icon: FaIcon(FontAwesomeIcons.arrowRight,
                                      size: 16),
                                  onPressed: () {
                                    print("Pressed");
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFECEFF1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'Ubah Kata Sandi',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                  ),
                                )),
                              ),
                              IconButton(
                                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                  icon: FaIcon(FontAwesomeIcons.arrowRight,
                                      size: 16),
                                  onPressed: () {
                                    print("Pressed");
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                      child: SelectionArea(
                          child: Text(
                        'Undang Teman',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFECEFF1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'Undang Teman',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                  ),
                                )),
                              ),
                              IconButton(
                                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                  icon: FaIcon(FontAwesomeIcons.arrowRight,
                                      size: 16),
                                  onPressed: () {
                                    print("Pressed");
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                      child: SelectionArea(
                          child: Text(
                        'Bantuan',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFECEFF1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'Kebijakan dan Privasi Pengguna',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                  ),
                                )),
                              ),
                              IconButton(
                                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                  icon: FaIcon(FontAwesomeIcons.arrowRight,
                                      size: 16),
                                  onPressed: () {
                                    print("Pressed");
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFECEFF1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'FAQ',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                  ),
                                )),
                              ),
                              IconButton(
                                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                  icon: FaIcon(FontAwesomeIcons.arrowRight,
                                      size: 16),
                                  onPressed: () {
                                    print("Pressed");
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                  child: OutlinedButton(
                    onPressed: null,
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'Keluar',
                      style: TextStyle(fontSize: 20, color: Color(0xFFE53935)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
