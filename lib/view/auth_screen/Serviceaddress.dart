// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Serviceaddress extends StatefulWidget {
  // ignore: non_constant_identifier_names
  String? Address;
  String? AddressType;
  // ignore: non_constant_identifier_names
  void Function()? Delete;

  Serviceaddress(
      {super.key,
      // ignore: non_constant_identifier_names
      required this.Address,
      required this.AddressType,
      required this.Delete});

  @override
  State<Serviceaddress> createState() => _ServiceaddressState();
}

class _ServiceaddressState extends State<Serviceaddress> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Row(children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              "${widget.AddressType}",
              style: const TextStyle(
                  fontFamily: "Gilroy",
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset(
              "assets/map-location.svg",
              height: 25,
            ),
            const SizedBox(
              width: 130,
            ),
            InkWell(
              onTap: widget.Delete,
              child: SvgPicture.asset(
                "assets/trash-can-solid.svg",
                height: 25,
              ),
            ),
          ]),
          const Divider(),
          Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 10),
              child: Text("\u2022 ${widget.Address} ")),
        ],
      ),
    );
  }
}
