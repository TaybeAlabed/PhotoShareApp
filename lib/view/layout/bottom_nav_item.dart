import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FABBottomAppBarItem {
  FABBottomAppBarItem({
    required this.iconData,
    required this.text,
    this.count,
    this.shape,
  });

  String iconData;
  String text;
  int? count;
  ShapeBorder? shape;
}

class FABBottomAppBar extends StatefulWidget {
  FABBottomAppBar({
    super.key,
    required this.items,
    this.centerItemText,
    this.height = 60.0,
    required this.index,
    this.iconSize = 24.0,
    this.backgroundColor,
    this.color,
    this.selectedColor,
    this.notchedShape,
    required this.onTabSelected,
  }) {
    assert(items.length == 2 || items.length == 4 || items.length == 3);
  }

  final List<FABBottomAppBarItem> items;
  final String? centerItemText;
  final double height;
  final double iconSize;
  final Color? backgroundColor;
  final Color? color;
  final Color? selectedColor;
  final int index;
  final NotchedShape? notchedShape;
  final ValueChanged<int> onTabSelected;
  @override
  State<StatefulWidget> createState() => FABBottomAppBarState();

  static FABBottomAppBarState? of(BuildContext context) =>
      context.findAncestorStateOfType<FABBottomAppBarState>();
}

class FABBottomAppBarState extends State<FABBottomAppBar> {
  int selectedIndex = -1;

  void updateIndex(int index) {
    widget.onTabSelected(index);
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedIndex = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items.length, (int index) {
      return _buildTabItem(
        item: widget.items[index],
        index: index,
        onPressed: updateIndex,
      );
    });
    items.insert(items.length >> 1, _buildMiddleTabItem());

    return Card(
      margin: EdgeInsets.zero,
      child: BottomAppBar(
        shape: const AutomaticNotchedShape(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
        ),
        color: widget.backgroundColor,
        child: Row(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: items,
        ),
      ),
    );
  }

  Widget _buildMiddleTabItem() {
    return SizedBox(
      height: widget.height,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: widget.iconSize),
          Text(
            widget.centerItemText ?? '',
            style: TextStyle(color: widget.color),
          ),
        ],
      ),
    );
  }

  Widget _buildTabItem({
    required FABBottomAppBarItem item,
    required int index,
    required ValueChanged<int> onPressed,
  }) {
    Color? color = selectedIndex == index ? widget.selectedColor : widget.color;
    return Expanded(
      child: Ink(
        height: widget.height,
        child: InkWell(
          customBorder: item.shape ??
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          onTap: () => onPressed(index),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ImageIcon(AssetImage(item.iconData),
                  size: widget.iconSize, color: color),
              SizedBox(
                height: 1.h,
              ),
              Text(
                item.text,
                style: TextStyle(color: color, fontSize: 10.sp),
              )
            ],
          ),
        ),
      ),
    );
  }
}
