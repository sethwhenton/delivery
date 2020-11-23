
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:delivery/constants.dart';
import 'package:delivery/Widgets/AssignOrderSheet.dart';
import 'package:delivery/Widgets/bottomModalSheet2.dart';
import 'package:delivery/Widgets/App bar.dart';

import 'package:delivery/Widgets/AcceptOrder.dart';




class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {





  GoogleMapController mapController;
  static const _initialPosition= LatLng(12.92, 77.02);
  LatLng _lastPosition= _initialPosition;
  final Set<Marker> _markers={};
  BitmapDescriptor customIcon;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          GoogleMap(
            initialCameraPosition: CameraPosition(
                target: _initialPosition,zoom: 20),
            onMapCreated: onCreated,
            myLocationEnabled: true,
            mapType: MapType.normal,
            compassEnabled: true,
            markers: _markers,
            onCameraMove: _onCameraMove,
          ),

          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .78,left: MediaQuery.of(context).size.width * .85),
            child: FloatingActionButton(
                onPressed: _onAddMarkerPressed,
                tooltip:'Add marker',
                backgroundColor: kwhiteColor,
                child: Icon(Icons.my_location,color: kdeepgreenColor,)
            ),
          ),



          GestureDetector(
            onTap: (){
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                  ),
                  context: context,
                  builder: (BuildContext context){
                    return BottomModalSheet2();
                  }
              );

            },
            child: Container(
              margin: EdgeInsets.only(top: 300,),
              color: kdeepgreenColor,
              width: 80,
              height: 80,
              child: Text(
                'Show bottom modalsheet 2',
                style: TextStyle(
                  color: kwhiteColor,
                ),
              ),
            ),
          ),



          GestureDetector(
            onTap: (){
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                  ),
                  context: context,
                  builder: (BuildContext context){
                    return AcceptOrder();
                  }
              );

            },
            child: Container(
              margin: EdgeInsets.only(top: 400,),
              color: kdeepgreenColor,
              width: 80,
              height: 80,
              child: Text(
                'Show accept order modal sheet',
                style: TextStyle(
                  color: kwhiteColor,
                ),
              ),
            ),
          ),





          GestureDetector(
            onTap: (){
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                  ),
                  context: context,
                  builder: (BuildContext context){
                    return AssignOrderSheet();
                  }
              );

            },
            child: Container(
              margin: EdgeInsets.only(top: 500,),
              color: kdeepgreenColor,
              width: 80,
              height: 80,
              child: Text(
                'Show Assign Order Sheet',
                style: TextStyle(
                  color: kwhiteColor,
                ),
              ),
            ),
          ),





          ApppBar(),

          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'message');

            },
            child: Container(
              margin: EdgeInsets.only(top: 500,left: 300),
              color: kdeepgreenColor,
              width: 80,
              height: 80,
              child: Text(
                'Show messages page',
                style: TextStyle(
                  color: kwhiteColor,
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'message2');

            },
            child: Container(
              margin: EdgeInsets.only(top: 300,left: 300),
              color: kdeepgreenColor,
              width: 80,
              height: 80,
              child: Text(
                'Show message2 page',
                style: TextStyle(
                  color: kwhiteColor,
                ),
              ),
            ),
          ),




        ],
      ),
    );
  }

  void onCreated(GoogleMapController controller) {
    setState(() {
      mapController=controller;
    });
  }

  void _onCameraMove(CameraPosition position) {
    setState(() {
      _lastPosition=position.target;
    });
  }

  void _onAddMarkerPressed() {
    setState(() {
      _markers.add(Marker(markerId: MarkerId(_lastPosition.toString()),
        position: _lastPosition,
        infoWindow: InfoWindow(
            title: 'Remember here',
            snippet: 'good place'
        ),
        icon: BitmapDescriptor.defaultMarker,


      ));
    });
  }
}