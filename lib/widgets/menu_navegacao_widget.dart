import 'package:cappybara_flutter/screens/busca_screen.dart';
import 'package:cappybara_flutter/screens/home_screen.dart';
import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class MenuNavegacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.maxFinite,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            color: Color(0XFF000000),
            width: 2,
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    final currentRoute = ModalRoute.of(context)?.settings.name;
                    if (currentRoute != "/home_screen") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                          settings: RouteSettings(name: AppRoutes.homeScreen),
                        ),
                      );
                    }
                  },
                  iconSize: 20,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    final currentRoute = ModalRoute.of(context)?.settings.name;
                    if (currentRoute != "/busca_screen") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BuscaScreen(),
                          settings: RouteSettings(name: AppRoutes.buscaScreen),
                        ),
                      );
                    }
                  },
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.calendar_month,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
