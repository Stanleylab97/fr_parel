//import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: CustomAppBar(),
        // backgroundColor: Palette.primaryColor,
        body: Center(
      child: Text("Dashbord"),
    ));
  }

  /* SliverToBoxAdapter _buildRegionTabBar() {
    return SliverToBoxAdapter(
        child: DefaultTabController(
            length: 2,
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                height: 50.0,
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(25.0)),
                child: TabBar(
                  indicator: BubbleTabIndicator(
                    tabBarIndicatorSize: TabBarIndicatorSize.tab,
                    indicatorHeight: 40.0,
                    indicatorColor: Colors.white,
                  ),
                  labelStyle: Styles.tabTextStyle,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  tabs: <Widget>[Text("Statistiques"), Text("Recherche")],
                  onTap: (index) {},
                ))));
  }

  SliverPadding _buildStageTabBar() {
    return SliverPadding(
        padding: const EdgeInsets.all(20.0),
        sliver: SliverToBoxAdapter(
            child: DefaultTabController(
                length: 3,
                child: TabBar(
                  labelStyle: Styles.tabTextStyle,
                  labelColor: Colors.white,
                  indicatorColor: Colors.transparent,
                  unselectedLabelColor: Colors.white60,
                  tabs: <Widget>[
                    Text('Ce jour'),
                    Text('Ce Mois'),
                    Text('Autres'),
                  ],
                  onTap: (index) {},
                ))));
  } */
}
