/// unduh file dari flutterviz- seret dan jatuhkan alat. Untuk detail lebih lanjut Kunjungi https://fluttereviz.io/nönnimport 'package:flutter/material.dart';
library;
import 'package:flutter/material.dart';
import 'package:tokogalliani/DetailProduk.dart';
import 'package:tokogalliani/Favorite.dart';
import 'package:tokogalliani/MyCart.dart';

import 'Profile.dart';

class Home extends StatelessWidget {
  final pageController = PageController();

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("lib/assets/logo.webp",
                          fit: BoxFit.cover),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: Text(
                          "Ayu",
                          textAlign: TextAlign.start,
                          maxLines: 2,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: GestureDetector(
                        onTap: () {
                          // Navigasi ke halaman favorit
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Favorite()),
                          );
                        },
                        child: const Icon(
                          Icons.favorite_border,
                          color: Color(0xffc04f39),
                          size: 24,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.notifications,
                      color: Color(0xff999998),
                      size: 24,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigasi ke halaman baru
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyCart()),
                        );
                      },
                      child: const Icon(
                        Icons.shopping_cart,
                        color: Color(0xff939393),
                        size: 24,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              child: TextField(
                controller: TextEditingController(),
                obscureText: false,
                textAlign: TextAlign.start,
                maxLines: 1,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
                decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: Color(0xff9d7d27), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: Color(0xff9d7d27), width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: Color(0xff9d7d27), width: 2),
                  ),
                  hintText: "Search here",
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xffa0a0a0),
                  ),
                  filled: true,
                  fillColor: const Color(0xffffffff),
                  isDense: false,
                  contentPadding: const EdgeInsets.all(8),
                  prefixIcon:
                      const Icon(Icons.search, color: Color(0xffa29f9f), size: 22),
                  suffixIcon: const Icon(Icons.photo_camera,
                      color: Color(0xffa29f9f), size: 22),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
              padding: const EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(0),
                            padding: const EdgeInsets.all(8),
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              color: Color(0xffffc6e0),
                              shape: BoxShape.circle,
                            ),
                            child: const ImageIcon(
                              NetworkImage(
                                  "https://cdn1.iconfinder.com/data/icons/basi-icon-set-01/100/Fin_copy-37-256.png"),
                              size: 24,
                              color: Color(0xff731069),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                            child: Text(
                              "Categories",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 12,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(0),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset("lib/assets/LongDress.jpg",
                                    fit: BoxFit.cover),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  "Long Dress",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset("lib/assets/ShortDress.jpg",
                                    fit: BoxFit.cover),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  "Short Dress",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset("lib/assets/DressSlim.jpg",
                                    fit: BoxFit.cover),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  "Slim Dress",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset("lib/assets/display8.jpg",
                                    fit: BoxFit.cover),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  "Party Dress",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset("lib/assets/display3.jpg",
                                    fit: BoxFit.cover),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  "Casual Dress",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 240,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  PageView.builder(
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, position) {
                      return Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          "lib/assets/sale1.jpg",
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 0, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Offer Zone",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 4, 0, 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Best Deals On Products",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff9e9e9e),
                  ),
                ),
              ),
            ),
            GridView(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1,
              ),
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6.0),
                      child:

                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          const Image(
                        image: AssetImage("lib/assets/display2.jpg"),
                        height: 140,
                        width: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 50,
                        height: 22,
                        decoration: const BoxDecoration(
                          color: Color(0xffeb1c1c),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(6.0),
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0)),
                        ),
                        child: const Text(
                          "50% Off",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 10,
                            color: Color(0xffece90d),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6.0),
                      child:

                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          const Image(
                        image: AssetImage("lib/assets/Display.jpg"),
                        height: 140,
                        width: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 50,
                        height: 22,
                        decoration: const BoxDecoration(
                          color: Color(0xffeb1c1c),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(6.0),
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0)),
                        ),
                        child: const Text(
                          "30% Off",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 10,
                            color: Color(0xffece90d),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6.0),
                      child:

                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          const Image(
                        image: AssetImage("lib/assets/Display.jpg"),
                        height: 140,
                        width: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 50,
                        height: 22,
                        decoration: const BoxDecoration(
                          color: Color(0xffeb1c1c),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(6.0),
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0)),
                        ),
                        child: const Text(
                          "10% Off",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 10,
                            color: Color(0xffece90d),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6.0),
                      child:

                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          const Image(
                        image: AssetImage("lib/assets/DressSlim.jpg"),
                        height: 140,
                        width: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 50,
                        height: 22,
                        decoration: const BoxDecoration(
                          color: Color(0xffeb1c1c),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(6.0),
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0)),
                        ),
                        child: const Text(
                          "30% Off",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 10,
                            color: Color(0xffece90d),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6.0),
                      child:

                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          const Image(
                        image: AssetImage("lib/assets/DressChuba.jpg"),
                        height: 140,
                        width: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 50,
                        height: 22,
                        decoration: const BoxDecoration(
                          color: Color(0xffeb1c1c),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(6.0),
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0)),
                        ),
                        child: const Text(
                          "30% Off",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 10,
                            color: Color(0xffece90d),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6.0),
                      child:

                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          const Image(
                        image: AssetImage("lib/assets/display7.jpg"),
                        height: 140,
                        width: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 50,
                        height: 22,
                        decoration: const BoxDecoration(
                          color: Color(0xffeb1c1c),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(6.0),
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0)),
                        ),
                        child: const Text(
                          "30% Off",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 10,
                            color: Color(0xffece90d),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6.0),
                      child:

                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          const Image(
                        image: AssetImage("lib/assets/modelbaju.jpg"),
                        height: 140,
                        width: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 50,
                        height: 22,
                        decoration: const BoxDecoration(
                          color: Color(0xffeb1c1c),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(6.0),
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0)),
                        ),
                        child: const Text(
                          "30% Off",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 10,
                            color: Color(0xffece90d),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6.0),
                      child:

                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          const Image(
                        image: AssetImage("lib/assets/display3.jpg"),
                        height: 140,
                        width: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 50,
                        height: 22,
                        decoration: const BoxDecoration(
                          color: Color(0xffeb1c1c),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(6.0),
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0)),
                        ),
                        child: const Text(
                          "30% Off",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 10,
                            color: Color(0xffece90d),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailProduk()), // Ganti dengan halaman detail produk
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: const Image(
                          image: AssetImage("lib/assets/display5.jpg"),
                          height: 140,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 50,
                        height: 22,
                        decoration: const BoxDecoration(
                          color: Color(0xffeb1c1c),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(6.0),
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0)),
                        ),
                        child: const Text(
                          "50% Off",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 10,
                            color: Color(0xffece90d),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              color: Color(0xffe3e1e1),
              height: 16,
              thickness: 8,
              indent: 0,
              endIndent: 0,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 0, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Contest Section",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 8, 0, 16),
              padding: const EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: const BoxDecoration(
                color: Color(0x00000000),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(0),
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    padding: const EdgeInsets.all(0),
                    width: 280,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0x00000000),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.0),
                              bottomLeft: Radius.circular(12.0)),
                          child:

                              ///***If you have exported images you must have to copy those images in assets/images directory.
                              Image(
                            image: AssetImage("lib/assets/cart.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(8, 4, 0, 4),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "Spin & Win Addured Credits",
                                  textAlign: TextAlign.start,
                                  maxLines: 1,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                  child: Text(
                                    "Spin & Win Assured Credits",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 11,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                                  child: Text(
                                    "CLICK TO SPIN",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      color: Color(0xff3a57e8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    padding: const EdgeInsets.all(0),
                    width: 280,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0x00000000),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.0),
                              bottomLeft: Radius.circular(12.0)),
                          child:

                              ///***If you have exported images you must have to copy those images in assets/images directory.
                              Image(
                            image: AssetImage("lib/assets/display8.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(8, 4, 0, 4),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "Spin & Win Addured Credits",
                                  textAlign: TextAlign.start,
                                  maxLines: 1,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                  child: Text(
                                    "Spin & Win Assured Credits",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 11,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                                  child: Text(
                                    "CLICK TO SPIN",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      color: Color(0xff3a57e8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                    padding: const EdgeInsets.all(0),
                    width: 280,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0x00000000),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.0),
                              bottomLeft: Radius.circular(12.0)),
                          child:

                              ///***If you have exported images you must have to copy those images in assets/images directory.
                              Image(
                            image: AssetImage("lib/assets/display2.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(8, 4, 0, 4),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "Spin & Win Addured Credits",
                                  textAlign: TextAlign.start,
                                  maxLines: 1,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                  child: Text(
                                    "Spin & Win Assured Credits",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 11,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                                  child: Text(
                                    "CLICK TO SPIN",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      color: Color(0xff3a57e8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
