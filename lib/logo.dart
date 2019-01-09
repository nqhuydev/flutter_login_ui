import 'package:flutter/material.dart';

class LogoStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      alignment: Alignment.center,
      children: <Widget>[
        // Local Offer
        _logoBubble(color: Color(0xFF18D191), icon: Icons.local_offer),
        _logoBubble(
            color: Color(0xFFFC6A7F),
            icon: Icons.home,
            margin: EdgeInsets.only(right: 50.0, top: 80.0)),
        _logoBubble(
            color: Color(0xFFFFCE56),
            icon: Icons.local_car_wash,
            margin: EdgeInsets.only(left: 30.0, top: 80.0)),
        _logoBubble(
            color: Color(0xFF45E0EC),
            icon: Icons.place,
            margin: EdgeInsets.only(left: 90.0)),
      ],
    );
  }
  Widget _logoBubble({Color color, IconData icon, EdgeInsets margin}) {
    return Container(
      margin: margin,
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: color,
      ),
      child: Icon(icon, color: Colors.white),
    );
  }
}
