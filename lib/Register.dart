import 'package:flutter/material.dart';
import 'Login.dart';  

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            // Gambar latar belakang
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
                color: const Color(0x00ffffff),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
                border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Logo
                        Container(
                          height: 130,
                          width: 130,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset("lib/assets/logo.webp", fit: BoxFit.cover),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                            "SignUp",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              fontSize: 20,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        // Form input Full Name
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: TextField(
                            controller: TextEditingController(text: "Full Name"),
                            obscureText: false,
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xffffffff),
                            ),
                            decoration: InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22.0),
                                borderSide: const BorderSide(color: Color(0xffb77b12), width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22.0),
                                borderSide: const BorderSide(color: Color(0xffb77b12), width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22.0),
                                borderSide: const BorderSide(color: Color(0xffb77b12), width: 1),
                              ),
                              labelText: "Full Name",
                              labelStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.italic,
                                fontSize: 14,
                                color: Color(0xffffffff),
                              ),
                              hintText: "Enter Text",
                              hintStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Color(0xffffffff),
                              ),
                              filled: true,
                              fillColor: const Color(0x33ffffff),
                              isDense: false,
                              contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                              prefixIcon: const Icon(Icons.person, color: Color(0xffffffff), size: 20),
                            ),
                          ),
                        ),
                        // Form input Email
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: TextField(
                            controller: TextEditingController(text: "Enter Email"),
                            obscureText: false,
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic,
                              fontSize: 14,
                              color: Color(0xffffffff),
                            ),
                            decoration: InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22.0),
                                borderSide: const BorderSide(color: Color(0xffbb8f4e), width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22.0),
                                borderSide: const BorderSide(color: Color(0xffbb8f4e), width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22.0),
                                borderSide: const BorderSide(color: Color(0xffbb8f4e), width: 1),
                              ),
                              labelText: "Email",
                              labelStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.italic,
                                fontSize: 15,
                                color: Color(0xffffffff),
                              ),
                              hintText: "Enter your email",
                              hintStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Color(0xffffffff),
                              ),
                              filled: true,
                              fillColor: const Color(0x34ffffff),
                              isDense: false,
                              contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                              prefixIcon: const Icon(Icons.mail, color: Color(0xffffffff), size: 20),
                            ),
                          ),
                        ),
                        // Form input Password
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: TextField(
                            controller: TextEditingController(text: "Enter Password"),
                            obscureText: true,
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic,
                              fontSize: 14,
                              color: Color(0xffffffff),
                            ),
                            decoration: InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22.0),
                                borderSide: const BorderSide(color: Color(0xffc4962a), width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22.0),
                                borderSide: const BorderSide(color: Color(0xffc4962a), width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22.0),
                                borderSide: const BorderSide(color: Color(0xffc4962a), width: 1),
                              ),
                              labelText: "Password",
                              labelStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.italic,
                                fontSize: 14,
                                color: Color(0xffffffff),
                              ),
                              hintText: "Enter your password",
                              hintStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Color(0xffffffff),
                              ),
                              filled: true,
                              fillColor: const Color(0x33ffffff),
                              isDense: false,
                              contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                              prefixIcon: const Icon(Icons.visibility_off, color: Color(0xffffffff), size: 20),
                            ),
                          ),
                        ),
                        // Tombol Daftar (Register)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: MaterialButton(
                            onPressed: () {
                              // Navigate to Home after Register
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => Login()),
                              );
                            },
                            color: const Color(0xffbb9260),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                              side: const BorderSide(color: Color(0xff866300), width: 1),
                            ),
                            padding: const EdgeInsets.all(16),
                            textColor: const Color(0xffffffff),
                            height: 50,
                            minWidth: MediaQuery.of(context).size.width,
                            child: Text(
                              "Create Account",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        // Navigasi ke halaman Login
                        Align(
                          alignment: const Alignment(0.0, 0.1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                                child: Align(
                                  alignment: Alignment(-0.2, 0.0),
                                  child: Text(
                                    "Already have an account?",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0x98ffffff),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 80, 0, 0),
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigasi ke halaman Login
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Login()),
                                    );
                                  },
                                  child: const Text(
                                    "Log In",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 14,
                                      color: Color(0xffffffff),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
