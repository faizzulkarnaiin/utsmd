// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names, dead_code

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:uts_flutter/cart_screen.dart';
import 'package:uts_flutter/detail_product.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  bool pics = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      //  bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.blue,
      //   items: <BottomNavigationBarItem>[
      //   BottomNavigationBarItem(icon: Icon(Iconsax.home1), label: 'Home'),
      //   BottomNavigationBarItem(icon: Icon(Iconsax.lovely), label: 'Favorite'),
      //   BottomNavigationBarItem(icon: Icon(LucideIcons.list), label: 'Transaksi'),
      //   BottomNavigationBarItem(icon: Icon(LucideIcons.user), label: 'Profile'),
      //  ]),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(icon: Icon(Iconsax.home1, size: 24,), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.heart, size: 24), label: 'Favorite'),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined , size: 24),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person , size: 24),
            label: 'Profil',
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              _Header(),
              SizedBox(
                height: 30,
              ),
              _FirstPicture(context),
              SizedBox(
                height: 40,
              ),
              _Penjelasan(),
              SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    _ContDesc('Semua', 1),
                    SizedBox(
                      width: 7,
                    ),
                    _ContDesc('Kemeja', 2),
                    SizedBox(
                      width: 7,
                    ),
                    _ContDesc('Sepatu', 3),
                    SizedBox(
                      width: 7,
                    ),
                    _ContDesc('Akses', 4),
                    SizedBox(
                      width: 7,
                    ),
                    _ContDesc('Jubah', 5),
                    SizedBox(
                      width: 7,
                    ),
                    _ContDesc('Sandal', 6),
                    SizedBox(
                      width: 7,
                    ),
                    _ContDesc('Peci', 7),
                  ],
                ),
              ),

              // _
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  _BuyCont(
                      "Batik Pria Lengan \nPanjang",
                      "Rp199.900",
                      "assets/test2.png",
                      "New Balance 992 \nGrey Original",
                      "Rp1.240.000",
                      "assets/rec62.png",
                      true),
                  SizedBox(
                    height: 25,
                  ),
                  _BuyCont(
                      "Skinny Jeans Dark \nBlue Wanita",
                      "Rp379.900",
                      "assets/Rectangle 42.png",
                      "Kacamata Baca \nAnti Radiasi Blue Ray",
                      "Rp125.000",
                      "assets/kacamata2.png",
                      false),
                  SizedBox(
                    height: 25,
                  ),
                  _BuyCont(
                      "Kemeja Pria Polos \nLengan Pendek Oxford",
                      "Rp119.000",
                      "assets/kemeja2.png",
                      "Human Greatness \nHoodie Hitam",
                      "Rp229.000",
                      "assets/hodie2.png",
                      false),
                  SizedBox(
                    height: 35,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Padding _Penjelasan() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Kategori",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xff292D32)),
          ),
          Text(
            "Lihat semua",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff00B14F)),
          )
        ],
      ),
    );
  }

  Row _BuyCont(String judul, String harga, String gambar, String judul2,
      String harga2, String gambar2, bool pics) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              width: 250,
              height: 250,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                gambar,
              ),
            ),
            Text(
              judul,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff292D32)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              harga,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff292D32)),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          
          onTap: pics == true ? () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailProduct()));
          }:() {},  
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 15),
                width: 250,
                height: 250,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Image.asset(gambar2),
              ),
              Text(
                judul2,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff292D32)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                harga2,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff292D32)),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _ContDesc(String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        width: 101,
        height: 43,
        decoration: BoxDecoration(
          color: selectedIndex == index ? Color(0xff00B14F) : Color(0xffF2F2F7),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color.fromARGB(255, 202, 200, 200)),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color:
                    selectedIndex == index ? Colors.white : Color(0xff292D32),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }

  Container _FirstPicture(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 24),
      height: 390,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset("assets/b3.png"),
    );
  }

  Padding _Header() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 50, 50, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            // margin: EdgeInsets.fromLTRB(24, 30, 45, 10),
            // width: MediaQuery.of(context).size.width - 200,
            width: 290,
            height: 50,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[200]),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 15),
                    fillColor: Color(0xffF2F2F7),
                    hintText: 'Cari pakaian pria',
                    hintStyle: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    prefixIcon: Icon(
                      Iconsax.search_normal,
                    ),
                    border: InputBorder.none),
              ),
            ),
          ),
          // SizedBox(
          //   height: 40,
          // ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Iconsax.notification,
            size: 26,
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScreenCart()));
              },
              child: Icon(
                Iconsax.bag,
                size: 26,
              )),
        ],
      ),
    );
  }
}
