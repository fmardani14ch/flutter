import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nobat_online/screen_viewer/reserv.dart';

class LOGIN extends StatefulWidget {
  const LOGIN({super.key});

  @override
  State<LOGIN> createState() => _LOGINState();
}

class _LOGINState extends State<LOGIN> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_left),
      ),
      //************************************** */
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //************************************** */
            Form(
                key: formkey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    //************************************************ */
                    Container(
                      child: Lottie.asset(
                        "assets/json/login.json",
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //************************************************ */

                    Column(
                      textDirection: TextDirection.rtl,
                      children: [
                        //************************************** */
                        TextFormField(
                            validator: (value) {
                              var adminkey = 'admin.salamat.2023';
                              if (value!.isEmpty ||
                                  value.length < 1 ||
                                  value != adminkey) {
                                return "";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                icon: Icon(
                                  Icons.key,
                                ),
                                hintText: "کد ادمین مجتمع سلامت را وارد کنید"),
                            textAlign: TextAlign.right),
                        //************************************************ */
                        const SizedBox(
                          height: 20,
                        ),
                        //************************************************ */

                        //************************************************ */
                        const SizedBox(height: 30),
                        //************************************************ */
                        ElevatedButton(
                            onPressed: () async {
                              if (formkey.currentState!.validate()) {
                                Navigator.pop(context);
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (Builder) {
                                  return Reserv();
                                }));
                              }
                              ;
                            },
                            child: Text(
                              "ورود",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            )),
                        //******************************************** */
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
