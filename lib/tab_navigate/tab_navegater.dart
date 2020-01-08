import 'package:first_flutter_app/pages/home_page.dart';
import 'package:first_flutter_app/pages/mine_page.dart';
import 'package:first_flutter_app/pages/search_page.dart';
import 'package:first_flutter_app/pages/travel_page.dart';
import 'package:flutter/material.dart';

class TabNavigate extends StatefulWidget {
  @override
  _TabNavigateState createState() {
    return _TabNavigateState();
  }
}

class _TabNavigateState extends State<TabNavigate> {
  final defaultColor = Colors.grey;
  final activeColor = Colors.blue;
  int currentIndex = 0;

  final PageController pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: <Widget>[
          HomePage(),
          SearchPage(),
          TravelPage(),
          MinePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          pageController.jumpToPage(index);
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: defaultColor,
              ),
              activeIcon: Icon(
                Icons.home,
                color: activeColor,
              ),
              title: Text(
                "首页",
                style: TextStyle(
                  color: currentIndex != 0 ? defaultColor : activeColor,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: defaultColor,
              ),
              activeIcon: Icon(
                Icons.search,
                color: activeColor,
              ),
              title: Text(
                "搜索",
                style: TextStyle(
                  color: currentIndex != 1 ? defaultColor : activeColor,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.camera_alt,
                color: defaultColor,
              ),
              activeIcon: Icon(
                Icons.camera_alt,
                color: activeColor,
              ),
              title: Text(
                "旅拍",
                style: TextStyle(
                  color: currentIndex != 2 ? defaultColor : activeColor,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: defaultColor,
              ),
              activeIcon: Icon(
                Icons.account_circle,
                color: activeColor,
              ),
              title: Text(
                "我的",
                style: TextStyle(
                  color: currentIndex != 3 ? defaultColor : activeColor,
                ),
              )),
        ],
      ),
    );
  }
}
