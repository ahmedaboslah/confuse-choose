

// import 'package:confuse/core/utils/colors.dart';
// import 'package:flutter/material.dart';

// class BottomNavigationBarWidget extends StatefulWidget {
//   const BottomNavigationBarWidget({super.key});

//   @override
//   State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidgetState();
// }

// class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
//   int currentPageIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return NavigationBar(
//       indicatorColor: Colors.transparent,
//       backgroundColor: Colors.transparent.withOpacity(0),
//         selectedIndex: 0,
//          onDestinationSelected: (int index) {
//           setState(() {
//             currentPageIndex = index;
//           });
//         },
//       destinations: [
//       NavigationDestination(
//             selectedIcon: Icon(Icons.home, color: colors.buttonColor),
//             icon: Icon(Icons.home_outlined),
//             label: 'Home',
//           ),
//           NavigationDestination(
//             selectedIcon: Icon(Icons.home,color: colors.buttonColor),
//             icon: Icon(Icons.home_outlined),
//             label: 'Home',
//           ),
//           NavigationDestination(
//             selectedIcon: Icon(Icons.home,color: colors.buttonColor),
//             icon: Icon(Icons.home_outlined),
//             label: 'Home',
//           ),
//     ],);
    
//   }
// }
import 'package:confuse/core/utils/colors.dart';
import 'package:confuse/features/Home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';


class PageViewShowed extends StatefulWidget {
  const PageViewShowed({super.key});
  static const pageviewid='/PageViewShowed';
  @override
  State<PageViewShowed> createState() => _PageViewShowedState();
}

class _PageViewShowedState extends State<PageViewShowed> {
  List<Widget> pages = [
    HomeView(),
     HomeView(),
      HomeView(),
   
  ];
  int Selectedindex = 0;
  oniconTaped(int index) {
    setState(() {
      Selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[Selectedindex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 65,
          decoration: BoxDecoration(color: Colors.transparent),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
                fixedColor: colors.buttonColor,
                
                currentIndex: Selectedindex,
                onTap: oniconTaped,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.lens_blur_sharp), label: ''),
                  BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
                ]),
          ),
        ),
      ),
    );
  }
}
