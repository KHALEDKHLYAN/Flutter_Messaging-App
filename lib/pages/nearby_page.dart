// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:blog_app/config/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart';
import '../components/toolbar.dart';

class NearbyPAge extends StatelessWidget {
  const NearbyPAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'NearBy',
      ),
      body: FlutterMap(
        options:
            MapOptions(initialCenter: LatLng(51.509364, -0.128928), zoom: 10),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
          MarkerLayer(markers: [
            Marker(
              width: 100,
              height: 100,
              point: LatLng(51.509364, -0.128928),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    child: Text('Username', style: TextStyle(color: Colors.black),),
                  ),
                  SvgPicture.asset(AppIcons.icLocation, 
                  colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),),
                ],
              ),
            ),
          ])
        ],
      ),
    );
  }
}
