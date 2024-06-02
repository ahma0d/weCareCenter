import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/Screens/sign_in/sign_in.dart';
import 'package:medical_u/controller/question_controller.dart';
import '../../controller/home_controller.dart';
import 'bottom1.dart';
import 'bottom2.dart';
import 'bottom3.dart';
import 'bottom4.dart';


class HomePage   extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _widgetOptions = [
    const Bottomone(),
    const Bottomtwo(),
    const Bottomthree(),
    const Bottomfour(),
  ];
  int _selectedIndex = 0;
  question_controller quController  = Get.put(question_controller());
  HomeController homeController  = Get.put(HomeController());
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(index == 2){
        quController.patient_que();
      }
      if(index == 0){
        homeController.getFamousDoctor();
        homeController.getUpComingAppointment();
      }
    });
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.maps_home_work),
              label: 'Visits',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded),
              label: 'Medical',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_outlined),
              label: 'More',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xff1C208F),
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: Icon(
              Icons.home,
            ),
            label: 'Home',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.maps_home_work),
            label: 'Visits',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded),
            label: 'Medical',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_outlined),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff1C208F),
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }


}
