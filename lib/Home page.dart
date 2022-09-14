import 'package:flutter/material.dart';
import 'package:project/appbar.dart';
import 'package:project/bottom%20dart.dart';
import 'package:project/glass%20box.dart';
import 'package:project/my%20tab%20bar%20dart.dart';
import 'package:project/recent%20tab%20dart.dart';
import 'package:project/top%20tab.dart';
import 'package:project/trending%20tab.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // user tapped searched button
  void searchButtonTapped() {}

  // tab options
  List tabOption = [
    ["Recent", RecentTab()],
    ["Trending", TrendingTab()],
    ["Top", TopTab()],
  ];

  // bottom bar navigation
  int _currentBottonIndex = 0;
  void _handleIndexChanged(int? index) {
    setState(() {
      _currentBottonIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOption.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        bottomNavigationBar: GlassBox(
          child: MyBottomBar(
            index: _currentBottonIndex,
            onTap: _handleIndexChanged,
          ),
        ),
        body: ListView(
          children: [
            // title + search button
            MyAppBar(
              title: 'Explore Collections',
              onSearchTap: searchButtonTapped,
            ),

            // tab bar
            SizedBox(
              height: 600,
              child: MyTabBar(
                tabOptions: tabOption,
              ),
            ),
          ],
        ),
      ),
    );
  }
}