import 'package:flutter/material.dart';
import 'userEdit_Page.dart';
import 'reserve_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

Widget user(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/blank_profile.png'),
          ),
          accountName: Text('  전예원'),
          accountEmail: Text('  yewon1118@naver.com'),
          onDetailsPressed: () {
            print('Hello, Let\'s play!');
          },
          decoration: BoxDecoration(
            color: Color(0xffF78181),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          title: Text('내 평점 : 38'),
          onTap: () {
            print('score button is clicked!');
          },
          //trailing: Icon(Icons.add),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.grey[850],
          ),
          title: Text('내정보 수정'),
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => userEditPage()),);
          },
          trailing: Icon(Icons.add),
        ),
        ListTile(
          leading: Icon(
            Icons.assignment,
            color: Colors.grey[850],
          ),
          title: Text('예약내역'),
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => reserveListPage()),);
          },
          trailing: Icon(Icons.add),
        ),
        ListTile(
          leading: Icon(
            Icons.send,
            color: Colors.grey[850],
          ),
          title: Text('1 : 1 문의내역'),
          onTap: () {
            print('Q&A button is clicked!');
          },
          trailing: Icon(Icons.add),
        ),
        ListTile(
          leading: Icon(
            Icons.help,
            color: Colors.grey[850],
          ),
          title: Text('FAQ'),
          onTap: () {
            print('FAQ button is clicked!');
          },
          trailing: Icon(Icons.add),
        ),
      ],
    ),
  );
}

Widget showM() {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(37.503813, 126.957022);

  final Set<Marker> markers = Set();

  markers.add(
    Marker(
        markerId: MarkerId('노량진 축구장'),
        position: LatLng(37.515262, 126.944366)),);
  markers.add(
      Marker(markerId: MarkerId('보라매공원 인조잔디 축구장'),
          position: LatLng(37.491539, 126.908553)));

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  return SizedBox(
    width: 380,
    height: 450,
    child: GoogleMap(
      mapType: MapType.normal,
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: _center,
        zoom: 12.0,
      ),
      //myLocationEnabled: true,
      //myLocationButtonEnabled: true,
      zoomGesturesEnabled: true,
      markers: markers,
    ),
  );
}
