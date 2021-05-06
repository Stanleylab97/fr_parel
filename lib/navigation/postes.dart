
import 'package:flutter/material.dart';

class Postes extends StatefulWidget {
  @override
  _PostesState createState() => _PostesState();
}

class _PostesState extends State<Postes> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
           // backgroundColor: Color(0xff109618),
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text("e-Sortie", style: TextStyle(color: Colors.red),),
            bottom: TabBar(     
              isScrollable: true,
              indicatorColor: Colors.red,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.black,
              indicatorWeight: 3.0, 
               onTap: (index){
                 setState(() {
                  /* switch (index) {
                    case 0:
                      PrimaryColor= Color(0xffff5722);
                      break;
                      case 1:
                      PrimaryColor= Color(0xff3f51b5);
                      break;
                      case 2:
                      PrimaryColor= Color(0xffe91e63);
                      break;
                      case 3:
                      PrimaryColor= Color(0xff9c27b0);
                      break;
              
                    default: 
                  }*/
            });
              },
              tabs: <Widget>[
                Tab(
                  child: Container(
                    child: Text(
                      'Vidanges',
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Visite technique',
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Révisions',
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ),
                ),
               
              
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(child: Text('')),//ff5722
              Center(child: Text('')),
              Center(child: Text('')),
            ],
          )),
    );
  }
}