import 'package:flutter/material.dart';
import 'package:fr_parel/configs/menu_model.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView(
      {Key key, this.tabIconsList, this.changeIndex, this.addClick})
      : super(key: key);

  final Function(int index) changeIndex;
  final Function addClick;
  final List<TabIconData> tabIconsList;
  @override
  _BottomBarViewState createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView>
    with TickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: <Widget>[
        AnimatedBuilder(
          animation: animationController,
          builder: (BuildContext context, Widget child) {
            return Container(
              height: 70,
              color: Color(0xff424362),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 62,
                    child: Padding(
                      padding:
                      const EdgeInsets.only(left: 8, right: 8, top: 4),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: TabIcons(
                                  tabIconData: widget.tabIconsList[0],
                                  removeAllSelect: () {
                                    setRemoveAllSelection(
                                        widget.tabIconsList[0]);
                                    widget.changeIndex(0);
                                  }),
                            ),
                          ),
                          Expanded(
                            child: TabIcons(
                                tabIconData: widget.tabIconsList[1],
                                removeAllSelect: () {
                                  setRemoveAllSelection(
                                      widget.tabIconsList[1]);
                                  widget.changeIndex(1);
                                }),
                          ),
                          Expanded(
                            child: TabIcons(
                                tabIconData: widget.tabIconsList[2],
                                removeAllSelect: () {
                                  setRemoveAllSelection(
                                      widget.tabIconsList[2]);
                                  widget.changeIndex(2);
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            );
          },
        ),
      ],
    );
  }

  void setRemoveAllSelection(TabIconData tabIconData) {
    if (!mounted) return;
    setState(() {
      widget.tabIconsList.forEach((TabIconData tab) {
        tab.isSelected = false;
        if (tabIconData.index == tab.index) {
          tab.isSelected = true;
        }
      });
    });
  }
}

class TabIcons extends StatefulWidget {
  const TabIcons({Key key, this.tabIconData, this.removeAllSelect})
      : super(key: key);

  final TabIconData tabIconData;
  final Function removeAllSelect;
  @override
  _TabIconsState createState() => _TabIconsState();
}

class _TabIconsState extends State<TabIcons> with TickerProviderStateMixin {
  @override
  void initState() {
    widget.tabIconData.animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    )..addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        if (!mounted) return;
        widget.removeAllSelect();
        widget.tabIconData.animationController.reverse();
      }
    });
    super.initState();
  }

  void setAnimation() {
    widget.tabIconData.animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Center(
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: () {
            if (!widget.tabIconData.isSelected) {
              setAnimation();
            }
          },
          child: IgnorePointer(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                ScaleTransition(
                  alignment: Alignment.center,
                  scale: Tween<double>(begin: 0.88, end: 1.0).animate(
                      CurvedAnimation(
                          parent: widget.tabIconData.animationController,
                          curve:
                          Interval(0.1, 1.0, curve: Curves.fastOutSlowIn))),
                  child: Container(
                    height: 35,
                    width: 35,
                    child: Image.asset(widget.tabIconData.isSelected
                        ? widget.tabIconData.selectedImagePath
                        : widget.tabIconData.imagePath),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}