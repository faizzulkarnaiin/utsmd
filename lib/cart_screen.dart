// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names, unused_element, curly_braces_in_flow_control_structures, depend_on_referenced_packages, avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:intl/intl.dart';

class ScreenCart extends StatefulWidget {
  @override
  State<ScreenCart> createState() => _ScreenCartState();
}

class _ScreenCartState extends State<ScreenCart> {
  int jumlahSepatu = 1;
  int jumlahKacamata = 1;
  int jumlahHodie = 1;
  final ongkir = 14000; // Ubah sesuai dengan biaya ongkir yang benar
  final int sepatuPrice = 1240000;
  final int kacamataPrice2 = 450000;
  final int hodiePrice2 = 165900;
  int calculateSubTotal5() {
    return jumlahSepatu * sepatuPrice +
        jumlahKacamata * kacamataPrice2 +
        jumlahHodie * hodiePrice2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 40, 24, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 26,
                      ),
                    ),
                    Text(
                      "Keranjang",
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff292D32)),
                    ),
                    Icon(
                      Icons.more_horiz_outlined,
                      size: 26,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 106,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0xffF2F2F7),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 20,
                              color: Color(0xff292D32),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Dikirim Ke",
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 130, 131, 132)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 15),
                        child: Text(
                          "Ubah",
                          style: GoogleFonts.inter(
                              color: Color(0xff00B14F),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 44),
                    child: Text(
                      "Jakarta, Cibubur, Kota Wisata \nMadrid No 23",
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff292D32)),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              _Shoes(context),
              SizedBox(
                height: 30,
              ),
              _Kacamata(context),
              SizedBox(
                height: 30,
              ),
              _Hodie(context),
              SizedBox(
                height: 96,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                margin: EdgeInsets.symmetric(horizontal: 24),
                decoration:
                    BoxDecoration(border: Border.all(color: Color(0xffF2F2F7))),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subtotal",
                        style: GoogleFonts.inter(
                            color: Color.fromARGB(255, 110, 111, 111),
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                      Text(
                        'Rp${NumberFormat('#,###').format(calculateSubTotal5())}',
                        style: GoogleFonts.inter(
                            color: Color(0xff292D32),
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Ongkir",
                        style: GoogleFonts.inter(
                            color: Color.fromARGB(255, 110, 111, 111),
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                      Text(
                        'Rp14.000',
                        style: GoogleFonts.inter(
                            color: Color(0xff292D32),
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: GoogleFonts.inter(
                            color: Color.fromARGB(255, 110, 111, 111),
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                      Text(
                        // 'Rp ${calculateSubTotal().toStringAsFixed(0) + calculateSubTotal2().toStringAsFixed(0) + calculateSubTotal3().toStringAsFixed(0) + Ongkir.toStringAsFixed(0)}',
                        'Rp${NumberFormat('#,###').format(calculateSubTotal5() + ongkir)}',
                        style: GoogleFonts.inter(
                            color: Color(0xff292D32),
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                    color: Color(0xff00B14F),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    'Tambah Keranjang',
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container _Shoes(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffF2F2F7)),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: 100,
                height: 100,
                child: Image.asset("assets/sepatu.png")),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New Balance 992 ...",
                    style: GoogleFonts.inter(
                        color: Color(0xff292D32),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      Text(
                        "40",
                        style: GoogleFonts.inter(
                            color: Color(0xff292D32),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      Container(
                        width: 92,
                        height: 44,
                        margin: EdgeInsets.only(left: 310),
                        decoration: BoxDecoration(
                            color: Color(0xffF2F2F7),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xffF2F2F7),
                            )),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (jumlahSepatu > 1) {
                                        jumlahSepatu--;
                                      }
                                    });
                                  },
                                  child: Image.asset("assets/minus.png")),
                              Text(jumlahSepatu.toString()),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      jumlahSepatu++;
                                    });
                                  },
                                  child: Image.asset("assets/add.png"))
                            ]),
                      ),
                    ],
                  ),
                  Text(
                    'Rp1.240.000',
                    style: GoogleFonts.inter(
                        color: Color(0xff292D32),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            )
          ]),
    );
  }

  Container _Kacamata(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffF2F2F7)),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: 100,
                height: 100,
                child: Image.asset("assets/kacamata.png")),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Kacamata Baca ...",
                    style: GoogleFonts.inter(
                        color: Color(0xff292D32),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      Text(
                        "-2, Hitam",
                        style: GoogleFonts.inter(
                            color: Color(0xff292D32),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      Container(
                        width: 92,
                        height: 44,
                        margin: EdgeInsets.only(left: 290),
                        decoration: BoxDecoration(
                            color: Color(0xffF2F2F7),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xffF2F2F7),
                            )),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (jumlahKacamata > 1) jumlahKacamata--;
                                    });
                                  },
                                  child: Image.asset("assets/minus.png")),
                              Text(jumlahKacamata.toString()),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      jumlahKacamata++;
                                    });
                                  },
                                  child: Image.asset("assets/add.png"))
                            ]),
                      ),
                    ],
                  ),
                  Text(
                    'Rp450.000',
                    style: GoogleFonts.inter(
                        color: Color(0xff292D32),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            )
          ]),
    );
  }

  Container _Hodie(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffF2F2F7)),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: 100,
                height: 100,
                child: Image.asset("assets/hodie.png")),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Human Greatness ,,,",
                    style: GoogleFonts.inter(
                        color: Color(0xff292D32),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      Text(
                        "XL, Hitam",
                        style: GoogleFonts.inter(
                            color: Color(0xff292D32),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      Container(
                        width: 92,
                        height: 44,
                        margin: EdgeInsets.only(left: 290),
                        decoration: BoxDecoration(
                            color: Color(0xffF2F2F7),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xffF2F2F7),
                            )),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (jumlahHodie > 1) jumlahHodie--;
                                    });
                                  },
                                  child: Image.asset("assets/minus.png")),
                              Text(jumlahHodie.toString()),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      jumlahHodie++;
                                    });
                                  },
                                  child: Image.asset("assets/add.png"))
                            ]),
                      ),
                    ],
                  ),
                  Text(
                    "Rp165.900",
                    style: GoogleFonts.inter(
                        color: Color(0xff292D32),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            )
          ]),
    );
  }
}
