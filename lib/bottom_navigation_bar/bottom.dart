import 'package:flutter/material.dart';
import 'package:netflix/bottom_navigation_bar/bottom_nav_func.dart';
import 'package:netflix/reusable_widgets/reusable_widgest.dart';
import 'package:netflix/screenss/home_page/home_page.dart';
import 'package:netflix/screenss/my_netflix/mynetflix.dart';
import 'package:netflix/screenss/new_hot/news_hot.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  BottomNavigationState createState() => BottomNavigationState();
}

class BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  List<Widget> pages = [
    const Homepage(),
    const Newspage(),
    const Mynetflixpage()
  ];
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blackColor,
        leading: buildleading(_currentIndex),
        actions: buildTrailingWidget(_currentIndex, context),
        title: buildtitlewidget(_currentIndex),
      ),
      body: PageView(
        controller: _pageController,
        children: pages,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: blackColor,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.animateToPage(_currentIndex,
                duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.newspaper,
              size: 30,
            ),
            label: 'News&Hot',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_4_outlined,
              size: 30,
            ),
            label: 'My Netflix',
          ),
        ],
      ),
    );
  }
}
