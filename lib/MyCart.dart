/// unduh file dari flutterviz- seret dan jatuhkan alat. Untuk detail lebih lanjut Kunjungi https://fluttereviz.io/nönnimport 'package:flutter/material.dart';
library;
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffb47f3c),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: const Text(
          "My Cart",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Color(0xffffffff),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xffffffff),
            size: 24,
          ),
        ),
        actions: const [
          Icon(Icons.shopping_cart, color: Color(0xffffffff), size: 24),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width,
            height: 80,
            decoration: const BoxDecoration(
              color: Color(0xffb57f3c),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
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
                    borderSide: const BorderSide(color: Color(0xff6a4a13), width: 3),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: Color(0xff6a4a13), width: 3),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: Color(0xff6a4a13), width: 3),
                  ),
                  hintText: "Search your Cart",
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                  filled: true,
                  fillColor: const Color(0xfff2f2f3),
                  isDense: false,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  prefixIcon:
                      const Icon(Icons.search, color: Color(0xff000000), size: 24),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GridView(
              padding: const EdgeInsets.all(16),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const ClampingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 0,
                childAspectRatio: 0.55,
              ),
              children: [
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          Image(
                            image: const AssetImage("lib/assets/display7.jpg"),
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 8, 8, 0),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: const Color(0xffa0a0a0),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0x4d9e9e9e), width: 1),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text(
                                "Long Dress Party",
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
                                child: RatingBar.builder(
                                  initialRating: 3,
                                  unratedColor: const Color(0xff9e9e9e),
                                  itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Color(0xffffc107)),
                                  itemCount: 5,
                                  itemSize: 20,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  onRatingUpdate: (value) {},
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Price:",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff393939),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                    child: Text(
                                      "Rs. 2200.00",
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff3a57e8),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          Image(
                            image: const AssetImage("lib/assets/display3.jpg"),
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: const Color(0xffa0a0a0),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0x4d9e9e9e), width: 1),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text(
                                "Short dress ",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
                                child: RatingBar.builder(
                                  initialRating: 3,
                                  unratedColor: const Color(0xff9e9e9e),
                                  itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Color(0xffffc107)),
                                  itemCount: 5,
                                  itemSize: 20,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  onRatingUpdate: (value) {},
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Price:",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff393939),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                    child: Text(
                                      "Rs. 2200.00",
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff3a57e8),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          Image(
                            image: const AssetImage("lib/assets/display5.jpg"),
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 8, 9, 0),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: const Color(0xffa0a0a0),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0x4d9e9e9e), width: 1),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text(
                                "Party Dress",
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
                                child: RatingBar.builder(
                                  initialRating: 3,
                                  unratedColor: const Color(0xff9e9e9e),
                                  itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Color(0xffffc107)),
                                  itemCount: 5,
                                  itemSize: 20,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  onRatingUpdate: (value) {},
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Price:",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff393939),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                    child: Text(
                                      "Rs. 2200.00",
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff3a57e8),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          Image(
                            image: const AssetImage("lib/assets/display4.jpg"),
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 8, 8, 0),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: const Color(0xffa0a0a0),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0x4d9e9e9e), width: 1),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text(
                                "Elegan Dress",
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
                                child: RatingBar.builder(
                                  initialRating: 3,
                                  unratedColor: const Color(0xff9e9e9e),
                                  itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Color(0xffffc107)),
                                  itemCount: 5,
                                  itemSize: 20,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  onRatingUpdate: (value) {},
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Price:",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff393939),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                    child: Text(
                                      "Rs. 2200.00",
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff3a57e8),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          Image(
                            image: const AssetImage("lib/assets/modelbaju.jpg"),
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 8, 8, 0),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: const Color(0xffa0a0a0),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0x4d9e9e9e), width: 1),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text(
                                "Casual Dress",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
                                child: RatingBar.builder(
                                  initialRating: 3,
                                  unratedColor: const Color(0xff9e9e9e),
                                  itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Color(0xffffc107)),
                                  itemCount: 5,
                                  itemSize: 20,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  onRatingUpdate: (value) {},
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Price:",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff393939),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                    child: Text(
                                      "Rs. 2200.00",
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff3a57e8),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          Image(
                            image: const AssetImage("lib/assets/Display.jpg"),
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text(
                                "Short Dress",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
                                child: RatingBar.builder(
                                  initialRating: 3,
                                  unratedColor: const Color(0xff9e9e9e),
                                  itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Color(0xffffc107)),
                                  itemCount: 5,
                                  itemSize: 20,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  onRatingUpdate: (value) {},
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Price:",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff393939),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                      child: Text(
                                        "Rs. 2200.00",
                                        textAlign: TextAlign.start,
                                        maxLines: 1,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 13,
                                          color: Color(0xff3a57e8),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          Image(
                            image: const AssetImage("lib/assets/DressChuba.jpg"),
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 8, 8, 0),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: const Color(0xffa0a0a0),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0x4d9e9e9e), width: 1),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text(
                                "Chubby Dress",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
                                child: RatingBar.builder(
                                  initialRating: 3,
                                  unratedColor: const Color(0xff9e9e9e),
                                  itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Color(0xffffc107)),
                                  itemCount: 5,
                                  itemSize: 20,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  onRatingUpdate: (value) {},
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Price:",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff393939),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                    child: Text(
                                      "Rs. 2200.00",
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff3a57e8),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          Image(
                            image: const AssetImage("lib/assets/DressSlim.jpg"),
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 8, 8, 0),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: const Color(0xffa0a0a0),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0x4d9e9e9e), width: 1),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text(
                                "Slim Dress",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
                                child: RatingBar.builder(
                                  initialRating: 3,
                                  unratedColor: const Color(0xff9e9e9e),
                                  itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Color(0xffffc107)),
                                  itemCount: 5,
                                  itemSize: 20,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  onRatingUpdate: (value) {},
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Price:",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff393939),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                    child: Text(
                                      "Rs. 2200.00",
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff3a57e8),
                                      ),
                                    ),
                                  ),
                                ],
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
    );
  }
}
