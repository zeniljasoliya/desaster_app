import 'package:desaster_app/view/auth_screen/Serviceaddress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  final LatLng _center = const LatLng(21.2266, 72.8312);

  late GoogleMapController mapController;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              height: 50,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    "assets/location-dot.svg",
                    color: const Color(0xFF253746),
                    width: 25,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Locations Map",
                    style: TextStyle(
                        fontFamily: "Gilroy",
                        color: Color(0xFF253746),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 250,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                child: Card(
                  elevation: 5,
                  child: GoogleMap(
                    // mapType: MapType.satellite,
                    onMapCreated: _onMapCreated,
                    // myLocationEnabled: true,
                    zoomControlsEnabled: false,
                    initialCameraPosition: CameraPosition(
                      target: _center,
                      zoom: 11.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                leading: SizedBox(
                    height: 30,
                    width: 30,
                    child: SvgPicture.asset("assets/earth-asia-solid.svg",
                        color: const Color(0xFF253746))),
                title: const Text(
                  "Address",
                  style: TextStyle(
                      fontFamily: "Gilroy",
                      color: Color(0xFF253746),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                trailing: const SizedBox(
                  height: 30,
                  width: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("ADD", style: TextStyle(color: Color(0xFF253746))),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.add_circle_outline,
                        color: Color(0xFF253746),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
              indent: 20,
              endIndent: 20,
            ),
            Serviceaddress(
              Address: "wertyuio",
              AddressType: "Home Address",
              Delete: null,
            ),
            const SizedBox(
              height: 10,
            ),
            Serviceaddress(
              Address: "wertyuio",
              AddressType: "Office Address",
              Delete: null,
            )
          ],
        ),
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
}
