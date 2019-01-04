import 'package:flutter/material.dart';
import 'package:flutter_samples/collapsing_toolbar/main_collapsing_toolbar.dart';
import 'package:flutter_samples/dashboard/dashboard.dart';
import 'package:flutter_samples/patient/patient.dart';
import 'package:flutter_samples/hero_animations/main_hero_animations.dart';
import 'package:flutter_samples/persistent_tabbar/main_persistent_tabbar.dart';
import 'package:flutter_samples/scroll_controller/main_scroll_controller.dart';
import 'package:flutter_samples/size_and_position/main_size_and_position.dart';
import 'package:flutter_samples/main_presenter.dart';


class CompanyColors {
  CompanyColors._(); // this basically makes it so you can instantiate this class

  static const _blackPrimaryValue = 0xFF000000;


  static const MaterialColor black = const MaterialColor(
    _blackPrimaryValue,
    const <int, Color>{
      50:  const Color(0xFFe0e0e0),
      100: const Color(0xFFb3b3b3),
      200: const Color(0xFF808080),
      300: const Color(0xFF4d4d4d),
      400: const Color(0xFF262626),
      500: const Color(_blackPrimaryValue),
      600: const Color(0xFF000000),
      700: const Color(0xFF000000),
      800: const Color(0xFF000000),
      900: const Color(0xFF000000),
    },
  );
}

class Main extends StatefulWidget {
  @override
  MainState createState() {
    return new MainState();
  }
}

class MainState extends State<Main> {

  MainPresenter _presenter;

  onButtonTap(Widget page) {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => page));
  }
  //_presenter = new MainPresenter(this);
  //_presenter.getUidInfo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dentist Apps"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            MyMenuButton(
              title: "Dashboarad",
              actionTap: () {
                onButtonTap(Dashboard());
              },
            ),
            MyMenuButton(
              title: "Takim",
              actionTap: () {
                onButtonTap(Dashboard());
              },
            ),
            MyMenuButton(
              title: "Pacienti",
              actionTap: () {
                onButtonTap(MainPatientPage());
              },
            ),
            MyMenuButton(
                title: "Persistent Tab Bar",
                actionTap: () {
                  onButtonTap(MainPersistentTabBar());
                }),
            MyMenuButton(
              title: "Collapsing Toolbar",
              actionTap: () {
                onButtonTap(MainCollapsingToolbar());
              },
            ),
            MyMenuButton(
              title: "Hero Animations",
              actionTap: () {
                onButtonTap(MainHeroAnimationsPage());
              },
            ),
            MyMenuButton(
              title: "Size and Positions",
              actionTap: () {
                onButtonTap(MainSizeAndPosition());
              },
            ),
            MyMenuButton(
              title: "ScrollController and ScrollNotification",
              actionTap: () {
                onButtonTap(MainScrollController());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyMenuButton extends StatelessWidget {
  final String title;
  final VoidCallback actionTap;

  MyMenuButton({this.title, this.actionTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: MaterialButton(
        height: 50.0,
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
        child: new Text(title),
        onPressed: actionTap,
      ),
    );
  }
}
