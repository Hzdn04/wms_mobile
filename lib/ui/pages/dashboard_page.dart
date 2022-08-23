import 'package:flutter/material.dart';
import 'package:wms_mobile/shared/theme.dart';
import 'package:wms_mobile/ui/widgets/custom_bar.dart';
import 'package:flutter/src/material/drawer.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30, right: 30, left: 30, bottom: 20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Warehouse Staff',
                    style: blackTextStyle.copyWith(
                        fontSize: 20, fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'PT. Maju Selaras',
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: reguler),
                  ),
                ],
              ),
            ),
            Builder(builder: (ctx) {
              return Material(
                child: InkWell(
                  onTap: () {
                    Scaffold.of(ctx).openEndDrawer();
                  },
                  child: Container(
                    width: 59,
                    height: 59,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/employed.png'),
                      ),
                    ),
                  ),
                ),
              );
            })
          ],
        ),
      );
    }

    Widget outboundBar() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 30),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
              ),
            ]),
        child: Column(
          children: [
            Text(
              'Outbound',
              style:
                  blackTextStyle.copyWith(fontSize: 15, fontWeight: semiBold),
            ),
            SizedBox(
              height: 15,
            ),
            BarCustom(
              title: 'Receiver',
              taskLength: 2,
            ),
            BarCustom(title: 'HU Conversion'),
            BarCustom(title: 'Check'),
            BarCustom(title: 'Putaway'),
          ],
        ),
      );
    }

    Widget inboundBar() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 35),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
              ),
            ]),
        child: Column(
          children: [
            Text(
              'Inbound',
              style:
                  blackTextStyle.copyWith(fontSize: 15, fontWeight: semiBold),
            ),
            SizedBox(
              height: 15,
            ),
            BarCustom(
              title: 'Picking',
              taskLength: 2,
            ),
            BarCustom(title: 'Packing'),
            BarCustom(title: 'Loading'),
            BarCustom(title: 'Handover'),
          ],
        ),
      );
    }

    Widget exboundBar() {
      return Container(
        child: SizedBox(
          height: 100,
        ),
      );
    }

    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/employed.png'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hi',
                                style: blackTextStyle.copyWith(
                                    fontSize: 20, fontWeight: semiBold),
                              ),
                              Text(
                                'Ivan ugna',
                                style: blackTextStyle.copyWith(
                                    fontSize: 15, fontWeight: reguler),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.add),
              horizontalTitleGap: 0,
              title: Text('Personal Data'),
              trailing: Icon(Icons.navigate_next_sharp),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.add),
              horizontalTitleGap: 0,
              title: Text('Change Password'),
              trailing: Icon(Icons.navigate_next_sharp),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.add),
              horizontalTitleGap: 0,
              title: Text('About'),
              trailing: Icon(Icons.navigate_next_sharp),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Container(
                  width: 250,
                  height: 40,
                  margin: EdgeInsets.only(top: 15),
                  child: Container(
                    width: 40,
                    height: 17,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: kPrimaryColor),
                    child: Center(
                      child: Text('Logout',
                          style: whiteTextStyle.copyWith(
                              fontSize: 15, fontWeight: semiBold)),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          header(),
          outboundBar(),
          SizedBox(
            height: 15,
          ),
          inboundBar(),
          exboundBar()
        ],
      ),
    );
  }
}
