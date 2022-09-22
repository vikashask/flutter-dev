import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _selectedLang = "en";

  void onLanguageSelect(String lang) {
    setState(() {
      _selectedLang = lang;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.40,
                color: const Color(0xFF061949),
              ),
              Positioned(
                right: 0,
                left: 0,
                top: MediaQuery.of(context).size.height * 0.02,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/MaskGroup30909.png"),
                          fit: BoxFit.cover)),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: MediaQuery.of(context).size.height * 0.37,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.67,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              onLanguageSelect("en");
                            },
                            child: Text(
                              "English",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: _selectedLang == "en"
                                      ? Colors.black
                                      : Colors.black54,
                                  fontWeight: _selectedLang == "en"
                                      ? FontWeight.bold
                                      : FontWeight.normal),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(" | "),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () => onLanguageSelect("ar"),
                            child: Text(
                              "Arabic",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: _selectedLang == "ar"
                                      ? Colors.black
                                      : Colors.black54,
                                  fontWeight: _selectedLang == "ar"
                                      ? FontWeight.bold
                                      : FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "Sign Up or Log in",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          // prefixIcon: Icon(Icons.person_2_rounded),
                          prefixIcon:
                              Image.asset("assets/images/SaudiFlag.png"),
                          prefixText: "+966",
                          prefixStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(),
                          labelText: 'Mobile Number',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "Use Email Address",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF00B5EE)),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: double.maxFinite,
                        height: 56,
                        child: ElevatedButton(
                            child: const Text("Let\'s Go!",
                                style: TextStyle(fontSize: 18)),
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFF00B5EE)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ))),
                            onPressed: () => null),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
