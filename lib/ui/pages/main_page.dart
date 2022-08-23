import 'package:flutter/material.dart';
import 'package:wms_mobile/shared/theme.dart';
import 'package:wms_mobile/ui/pages/dashboard_page.dart';
import 'package:wms_mobile/ui/widgets/custom_navigation_items.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customBottomNavigation()],
      ),
    );
  }

  Widget buildContent(){
    return DashboardPage();
  }

  Widget customBottomNavigation() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.fromLTRB(18, 0, 18, 30),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(18)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomNavigation(
              imgUrl: 'assets/home.png',
              isSelected: true,
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kPrimaryColor
              ),
              child: CustomNavigation(
                imgUrl: 'assets/scan.png',
                isSelected: false,
              ),
            ),
            CustomNavigation(
              imgUrl: 'assets/process.png',
              isSelected: false,
            ),
          ],
        ),
      ),
    );
  }

}

