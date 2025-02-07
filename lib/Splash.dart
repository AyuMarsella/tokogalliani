/// unduh file dari flutterviz- seret dan jatuhkan alat. Untuk detail lebih lanjut Kunjungi https://fluttereviz.io/nönnimport 'package:flutter/material.dart';
library;
import 'package:flutter/material.dart';
import 'Login.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    // Navigasi ke Login setelah 3 detik
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
    return Scaffold(
      backgroundColor: const Color(0x00ffffff),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            ///***If you have exported images you must have to copy those images in assets/images directory.
            Image(
              image: const AssetImage("lib/assets/baground3.jpg"),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Container(
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: const Color(0x00dcdcdc),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
                border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 130,
                        width: 130,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("lib/assets/logo.webp",
                            fit: BoxFit.fill),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: Text(
                        "Galliani Busana Wanita",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          color: Color(0xffffffff),
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
    );
  }
}
