import 'package:flutter/material.dart';
import 'package:gestalt_gui/app_const.dart';

class Footer extends StatelessWidget {

  final String text;

  const Footer({
    Key key,
    this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text('Made with', style: TextStyle(fontSize: 11)),
              Text(' by ', style: TextStyle(fontSize: 11)),
              Text(AppConst.AUTHOR, style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),),
              SizedBox(width: 5,),
              Text(text, style: TextStyle(fontSize: 11),),
            ],
          ),
          Text('Ulaanbaatar. ${DateTime.now().year}', style: TextStyle(fontSize: 11),)
        ],
      ),
    );
  }

}