
import 'package:flutter/material.dart';
//import 'package:dianleme_app/common_header.dart';

class DropDownView extends StatefulWidget {
  final Widget child;
  final double left; //距离左边位置
  final double top; //距离上面位置

//  final Map<String,List<Map<String, String>>> countryCodeList;
  final Function(BuildContext _context) complete;
  final Function() clickAction;

  const DropDownView({
    Key key,
    @required this.child,
    this.left,
    this.top,
    this.complete,
    this.clickAction,
  }) : super(key: key);

  @override
  _DropDownViewState createState() => _DropDownViewState();

}

class _DropDownViewState extends State<DropDownView> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.complete(context);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(left: widget.left, top: widget.top),
        child: Container(
          child: Column(
            children: <Widget>[
              widget.child,
            ],
          ),
        ),
      ),
      onTap: (){ //点击空白处
        print("=============点击空白处");
        widget.clickAction();
        Navigator.of(context).pop();
      },
    );
  }
}