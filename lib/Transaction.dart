/// unduh file dari flutterviz- seret dan jatuhkan alat. Untuk detail lebih lanjut Kunjungi https://fluttereviz.io/nönnimport 'package:flutter/material.dart';
library;
import 'package:flutter/material.dart';
import 'package:tokogalliani/Home.dart';
import 'package:tokogalliani/Profile.dart';

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff9b7c28),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: const Text(
          "My Payment",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Color(0xffffffff),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            // Menavigasi ke halaman Home.dart
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => Profile()), // Ganti dengan halaman Home
            );
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xffffffff),
            size: 24,
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ///***If you have exported images you must have to copy those images in assets/images directory.
            Image(
              image: const AssetImage("lib/assets/baground2.jpg"),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 5, 50),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.shopping_cart,
                            color: Color(0xff000000),
                            size: 24,
                          ),
                          Text(
                            "My Cart",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width,
                      height: 130,
                      decoration: BoxDecoration(
                        color: const Color(0x00000000),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.zero,
                        border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                      ),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.all(0),
                        shrinkWrap: false,
                        physics: const ScrollPhysics(),
                        children: [
                          Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            padding: const EdgeInsets.all(0),
                            width: 100,
                            height: MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                              color: const Color(0xd0000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                  color: const Color(0x4d9e9e9e), width: 1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0)),
                                  child:

                                      ///***If you have exported images you must have to copy those images in assets/images directory.
                                      Image(
                                    image:
                                        const AssetImage("lib/assets/display4.jpg"),
                                    height: 100,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Text(
                                  "White Dress",
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            padding: const EdgeInsets.all(0),
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: const Color(0xcf000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                  color: const Color(0x4d000000), width: 1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0)),
                                  child:

                                      ///***If you have exported images you must have to copy those images in assets/images directory.
                                      Image(
                                    image:
                                        const AssetImage("lib/assets/display7.jpg"),
                                    height: 100,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Text(
                                  "Braid Dress",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            padding: const EdgeInsets.all(0),
                            width: 100,
                            height: MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                              color: const Color(0xcb000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                  color: const Color(0x4d9e9e9e), width: 1),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0)),
                                  child:

                                      ///***If you have exported images you must have to copy those images in assets/images directory.
                                      Image(
                                    image:
                                        AssetImage("lib/assets/display2.jpg"),
                                    height: 100,
                                    width: 140,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  "Pink Dress",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 10, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.attach_money,
                            color: Color(0xff000000),
                            size: 24,
                          ),
                          Text(
                            "Total My Payment :",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                              color: Color(0xff000000),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(
                              "40\$",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                                fontSize: 20,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Color(0xff997926),
                      height: 10,
                      thickness: 2,
                      indent: 10,
                      endIndent: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        "Metode Pembayaran",
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            color: const Color(0xff957624),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            padding: const EdgeInsets.all(16),
                            textColor: const Color(0xffffffff),
                            height: 40,
                            minWidth: 0,
                            child: Text(
                              "BCA",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: MaterialButton(
                              onPressed: () {},
                              color: const Color(0xff979797),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              padding: const EdgeInsets.all(16),
                              textColor: const Color(0xffffffff),
                              height: 40,
                              minWidth: 0,
                              child: Text(
                                "BNI",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: MaterialButton(
                              onPressed: () {},
                              color: const Color(0xff8e8e8e),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: const BorderSide(
                                    color: Color(0xff808080), width: 1),
                              ),
                              padding: const EdgeInsets.all(16),
                              textColor: const Color(0xffffffff),
                              height: 40,
                              minWidth: 0,
                              child: Text(
                                "BRI",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: MaterialButton(
                              onPressed: () {},
                              color: const Color(0xff8c8c8c),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: const BorderSide(
                                    color: Color(0xff808080), width: 1),
                              ),
                              padding: const EdgeInsets.all(16),
                              textColor: const Color(0xffffffff),
                              height: 40,
                              minWidth: 0,
                              child: Text(
                                "ShopeePay",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Padding(
                    //   padding:
                    //       EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    // child: FlutterVizCreditCardView(
                    //     obscureCardNumber: true,
                    //     obscureCVV: false,
                    //     spacing: 16,
                    //     filled: true,
                    //     fillColor: Color(0xfff2f2f3),
                    //     contentPadding:
                    //         EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    //     isDense: false,
                    //     textStyle: TextStyle(
                    //       color: Color(0xff000000),
                    //       fontSize: 14,
                    //       fontWeight: FontWeight.w400,
                    //       fontStyle: FontStyle.normal,
                    //     ),
                    //     inputBorder: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(20.0),
                    //       borderSide:
                    //           BorderSide(color: Color(0xffc9ac5c), width: 1),
                    //     ),
                    //   ),
                    // ),
                    // Padding(
                    //   padding:
                    //       EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    //   child: Text(
                    //     "Delivery Option",
                    //     textAlign: TextAlign.center,
                    //     overflow: TextOverflow.clip,
                    //     style: TextStyle(
                    //       fontWeight: FontWeight.w700,
                    //       fontStyle: FontStyle.normal,
                    //       fontSize: 20,
                    //       color: Color(0xff000000),
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: MaterialButton(
                              onPressed: () {},
                              color: const Color(0xff957624),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: const BorderSide(
                                    color: Color(0xff808080), width: 1),
                              ),
                              padding: const EdgeInsets.all(16),
                              textColor: const Color(0xffffffff),
                              height: 40,
                              minWidth: 0,
                              child: Text(
                                "COD",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: MaterialButton(
                              onPressed: () {},
                              color: const Color(0xff9b9b9b),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: const BorderSide(
                                    color: Color(0xff808080), width: 1),
                              ),
                              padding: const EdgeInsets.all(16),
                              textColor: const Color(0xffffffff),
                              height: 40,
                              minWidth: 0,
                              child: Text(
                                "Else",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.0, 0.9),
              child: MaterialButton(
                onPressed: () {
        // Add your navigation or cart logic here
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()), // Replace CartPage with your actual Cart screen widget
        );
      
                },
                color: const Color(0xffd8bc6c),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: const BorderSide(color: Color(0xffa37b00), width: 4),
                ),
                padding: const EdgeInsets.all(16),
                textColor: const Color(0xff000000),
                height: 50,
                minWidth: 200,
                child: Text(
                  "Accept Payment",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
