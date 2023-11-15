import 'package:flutter/material.dart';
import 'package:nobat_online/login/login.dart';
import 'package:nobat_online/services/doctor_register_services.dart';
import 'package:nobat_online/services/user_factor_services.dart';
import 'package:nobat_online/screen_viewer/reserv_geust.dart';
import 'package:nobat_online/services/comment_service.dart';

import 'package:nobat_online/services/pay_factor_services.dart';
import 'package:nobat_online/models/comments.dart';
import 'package:nobat_online/screen_viewer/news.dart';
import 'package:lottie/lottie.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final TextEditingController msgnamecontroler = TextEditingController();

class _HomeState extends State<Home> {
  TextEditingController commentcontroler = TextEditingController();
  TextEditingController idcontroler = TextEditingController();
  TextEditingController namecontroler = TextEditingController();

  @override
  void initState() {
    //////////////////////////////////////////////

    /////////////////////////////////////////////
    DOCTOR_RIGESTER_SERVICE.getdoctort_register_data();
    USER_FACTOR_SERVICE.get_user_factor_data();
    PAY_FACTOR_SERVICE.get_pay_factor_data();
    COMMENT_SERVICE.get_comment_list();

    super.initState();
  }

  var comment = COMMENT_SERVICE.comment_list.value;
  var size = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //*************************************************** */
      appBar: AppBar(),
      drawer: Drawer(
        child: SafeArea(
            child: ListView(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
          children: [
            Container(
              color: Colors.greenAccent,
              child: TextButton(
                child: Text("انتقادات و پیشنهادات",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black)),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                            alignment: Alignment.centerLeft,
                            content: Container(
                              height: 250,
                              width: 250,
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: [
                                  Container(
                                      child: TextFormField(
                                    controller: namecontroler,
                                    textAlign: TextAlign.right,
                                    decoration: InputDecoration(
                                        hintText: "نام مستعار",
                                        hintTextDirection: TextDirection.rtl),
                                  )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Expanded(
                                      child: TextFormField(
                                    controller: commentcontroler,
                                    maxLines: null,
                                    keyboardType: TextInputType.multiline,
                                    textAlign: TextAlign.right,
                                    decoration: InputDecoration(
                                        hintText: "انتقادات و پیشنهادات",
                                        hintTextDirection: TextDirection.rtl),
                                  )),
                                  TextButton(
                                      onPressed: () async {
                                        var idc = idcontroler.text;
                                        await COMMENT_SERVICE
                                            .add_comment(COMMENTS_MODEL(
                                          comment_text: commentcontroler.text,
                                          name: namecontroler.text,
                                          id: int.tryParse(idc),
                                        ));
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "ثبت",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ))
                                ],
                              ),
                            ));
                      });
                },
              ),
              height: 50,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Color.fromARGB(255, 248, 239, 239),
              child: TextButton(
                child: Text("ارتباط با ما",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black)),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                            alignment: Alignment.centerLeft,
                            content: Container(
                              alignment: Alignment.centerLeft,
                              height: 200,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                          child: IconButton(
                                        color: Colors.blue,
                                        iconSize: 50,
                                        onPressed: () {},
                                        icon: Icon(Icons.telegram),
                                      )),
                                      Expanded(
                                          child: IconButton(
                                        iconSize: 50,
                                        onPressed: () {},
                                        icon: Image.asset(
                                            "assets/images/instaicon.jpg"),
                                      )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: IconButton(
                                        color: Colors.blue,
                                        iconSize: 50,
                                        onPressed: () {},
                                        icon: Icon(Icons.phone),
                                      )),
                                      Expanded(
                                          child: Column(
                                        children: [
                                          Text("021 - 12345678"),
                                          Text("021 - 12345679"),
                                          Text("021 - 12345680")
                                        ],
                                      )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: IconButton(
                                        color: Colors.blue,
                                        iconSize: 50,
                                        onPressed: () {},
                                        icon: Icon(Icons.location_city),
                                      )),
                                      Expanded(child: Text("... آدرس کلینیک ")),
                                    ],
                                  ),
                                ],
                              ),
                            ));
                      });
                },
              ),
              height: 50,
            ),
            SizedBox(
              height: 10,
            ),
            // Container(
            //   height: 50,
            //   color: Colors.redAccent,
            //   child: TextButton(
            //       onPressed: () {
            //         Navigator.pop(context);
            //         Navigator.push(context,
            //             MaterialPageRoute(builder: (context) {
            //           return NEWS();
            //         }));
            //       },
            //       child: Text(
            //         "اخبار",
            //         style: TextStyle(
            //             fontWeight: FontWeight.w500, color: Colors.black),
            //       )),
            // ),
            SizedBox(
              height: 10,
            ),
            ////////////////////////////////////////////////////////////////////
            Lottie.asset(
              "assets/json/root_lottie_2.json",
              height: 190,
            ),
            Lottie.asset(
              "assets/json/root_lottie.json",
            ),

            ///////////////////////////////////////////////////////////////////
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 187, 186, 186)),
              child: Column(
                children: [
                  Text("powered by : F.Mardani"),
                  Text("app ver : 1.0")
                ],
              ),
            ),
          ],
        )),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                //*************************************************** */
                Container(
                  child: Image.asset("assets/images/mainhead.png"),
                  width: double.infinity,
                ),
                //*************************************************** */
                SizedBox(
                  height: 10,
                ),
                //************************************************** */
                Container(
                  child: Image.asset("assets/images/home.jpg"),
                  width: double.infinity,
                ),
                //*************************************************** */
                SizedBox(
                  height: 20,
                ),
                //*************************************************** */
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //*************************************************** */

                    //*************************************************** */

                    //*************************************************** */
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LOGIN();
                            }));
                          },
                          child: Text("ورود پزشکان")),
                    ),

                    //*************************************************** */
                    SizedBox(
                      width: 10,
                    ),
                    /*************************************************** */
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            DOCTOR_RIGESTER_SERVICE.getdoctort_register_data();
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Reserv_geust();
                            }));
                          },
                          child: Text("برنامه هفتگی پزشکان")),
                    )

                    //*************************************************** */
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          )),
    );
  }
}

//*************************************************** */
