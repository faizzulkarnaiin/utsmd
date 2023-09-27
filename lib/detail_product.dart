// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names, unused_element

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lucide_icons/lucide_icons.dart';

class DetailProduct extends StatefulWidget {
  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  int selectedIndex = 0;
  bool love = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 40, 10, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      "Detail Product",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff292D32)),
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            love = !love;
                          });
                        },
                        child: love
                            ? Icon(
                                Iconsax.heart5,
                                color: Colors.red,
                                size: 26,
                              )
                            : Icon(Iconsax.heart)),
                  ],
                ),
              ),
              // SizedBox(height: 15,),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  height:500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset("assets/shoes.png"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, bottom: 20),
                child: Text(
                  "New Balance 992 Grey Original",
                  style: GoogleFonts.inter(
                      color: Color(0xff292D32),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Row(
                  children: [
                    Icon(
                      Iconsax.star1,
                      size: 18,
                      color: Color.fromARGB(255, 248, 223, 0),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4.8",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                    Text(
                      "  (102) | 67 ulasan",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color.fromARGB(255, 156, 156, 157)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Column(
                  children: [
                    RichText(
                        text: TextSpan(
                      text:
                          "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin... ",
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Baca selengkapnya',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xff00B14F))),
                      ],
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 87, 88, 88)),
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, bottom: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Pilih Ukuran",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff292D32),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  _BoxUkuran("39", 1),
                  _BoxUkuran("40", 2),
                  _BoxUkuran("41", 3),
                  _BoxUkuran("42", 4),
                  _BoxUkuran("43", 5),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rp1.240.000",
                      style: GoogleFonts.inter(
                          color: Color(0xff292D32),
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 220,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xff00B14F),
                      ),
                      child: Center(
                        child: Text(
                          "Tambah Keranjang",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _BoxUkuran(String ukuran, int indexUkuran) {
    return Padding(
      padding: const EdgeInsets.only(left: 22),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = indexUkuran;
              });
            },
            child: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: selectedIndex == indexUkuran
                      ? Color.fromARGB(183, 123, 237, 174)
                      : Color(0xffF2F2F7),
                  border: Border.all(
                      color: selectedIndex == indexUkuran
                          ? Colors.green
                          : Color(0xffF2F2F7))),
              child: Center(
                  child: Text(
                ukuran,
                style: GoogleFonts.inter(
                    color: selectedIndex == indexUkuran
                        ? Color(0xff00B14F)
                        : Colors.black),
              )),
            ),
          )
        ],
      ),
    );
  }
}
