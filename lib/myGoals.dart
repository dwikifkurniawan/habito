import 'package:flutter/material.dart';
import 'package:habito/addGoal.dart';
import 'package:habito/data_goals/data_goal_proses.dart';
import 'package:habito/data_goals/list.dart';
import 'package:habito/theme_s.dart';

class MyGoals extends StatefulWidget {
  const MyGoals({Key? key}) : super(key: key);
  @override
  _MyGoalsState createState() => _MyGoalsState();
}

class _MyGoalsState extends State<MyGoals> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'My Goals',
                    style: TextStyle(
                      color: textWhite,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            // container search
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
              height: 80,
              // decoration: BoxDecoration(
              //   color: primaryOrange,
              //   borderRadius: BorderRadius.only(
              //       bottomLeft: Radius.circular(20),
              //       bottomRight: Radius.circular(20)),
              // ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(child: SizedBox()),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            width: double.infinity,
                            height: 40,
                            decoration: BoxDecoration(
                              color: shadow,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Center(
                              child: TextField(
                                  style: regular14pt,
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      suffixIcon: IconButton(
                                        icon: const Icon(Icons.search),
                                        onPressed: () {
                                          /* Clear the search field */
                                        },
                                      ),
                                      border: InputBorder.none,
                                      hintText: 'Cari data goals...')),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.all(10),
              child: Expanded(
                child: TabBar(
                  controller: tabController,
                  labelColor: Colors.white,
                  unselectedLabelColor: textGrey,
                  indicatorColor: Colors.white,
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
                  labelStyle: regular14pt,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: primaryOrange),
                  tabs: [
                    Tab(
                      child: Text("Proses", textAlign: TextAlign.center),
                    ),
                    Tab(
                      child: Text("Selesai", textAlign: TextAlign.center),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [DataGoal(), ListDataSekolah()],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddGoalPage()));
        },
        child: Icon(Icons.add),
        backgroundColor: primaryOrange,
      ),
    );
  }
}
