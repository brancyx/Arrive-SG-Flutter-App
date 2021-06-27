import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/screens/events/events_screen.dart';

import '../constants.dart';
import '../screens/events/events_screen.dart';
import '../screens/home/home_screen.dart';
import '../size_config.dart';
import 'app_bar.dart';

// class CustomBottonNavBar extends StatelessWidget {
//   const CustomBottonNavBar({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     return Container(
//       color: Colors.redAccent,
//       child: SafeArea(
//         child: Padding(
//           padding:
//               EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               NavItem(
//                 icon: "assets/icons/calendar.svg",
//                 title: "Home",
//                 press: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => EventsScreen(),
//                       ));
//                 },
//               ),
//               NavItem(
//                 icon: "assets/icons/chat.svg",
//                 title: "Chat",
//                 press: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => HomeScreen(),
//                       ));
//                 },
//               ),
//               NavItem(
//                 icon: "assets/icons/friendship.svg",
//                 title: "Friends",
//                 press: () {},
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class NavItem extends StatelessWidget {
//   const NavItem({
//     Key key,
//     @required this.icon,
//     @required this.title,
//     @required this.press,
//     this.isActive = false,
//   }) : super(key: key);
//   final String icon, title;
//   final GestureTapCallback press;
//   final bool isActive;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: press,
//       child: Container(
//         padding: EdgeInsets.fromLTRB(0.0,10.0,0.0,0.0),
//         height: getProportionateScreenWidth(50),
//         width: getProportionateScreenWidth(60),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [if (isActive) kDefualtShadow],
//         ),
//         child: Column(
//           children: [
//             SvgPicture.asset(
//               icon,
//               color: kTextColor,
//               height: 22,
//             ),
//             Spacer(),
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 11,
//                 fontWeight: FontWeight.bold,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }



class CustomBottonNavBar extends StatefulWidget {
  const CustomBottonNavBar({
    Key key,
  }) : super(key: key);
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<CustomBottonNavBar> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    EventsScreen(),
    Text('Profile Screen'),
  ];
  
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<AppBar> _headerTitle = <AppBar>[
      buildAppBar(context, isTransparent: true), 
      buildAppBar(context, title: "Recommended Groups" ),
      buildAppBar(context, title: "Profile")
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _headerTitle[_selectedIndex],
      // body: Body(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              'Home',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
            ),
            title: Text(
              'Explore',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            title: Text(
              'Profile',
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
    );
  }
}