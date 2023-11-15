import 'package:flutter/material.dart';
import 'package:nobat_online/screen_viewer/reserv_geust.dart';
import 'package:nobat_online/services/pay_factor_services.dart';

class PAY_SCREEN extends StatefulWidget {
  const PAY_SCREEN({super.key});

  @override
  State<PAY_SCREEN> createState() => _PAY_SCREENState();
}

class _PAY_SCREENState extends State<PAY_SCREEN> {
  var factor = PAY_FACTOR_SERVICE.pay_factor_list.value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Reserv_geust();
            }));
          },
          child: Icon(Icons.arrow_back),
        ),
        body: SafeArea(
            child: Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
                child: ValueListenableBuilder(
                    valueListenable: PAY_FACTOR_SERVICE.pay_factor_list,
                    builder: (context, value, index) {
                      return ListView.builder(
                        itemCount:
                            PAY_FACTOR_SERVICE.pay_factor_list.value.length,
                        itemBuilder: (context, index) {
                          //***************************************************** */

                          var item = factor[index];
                          //************************************************ */
                          return Container(
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                //*********************************************** */
                                SizedBox(
                                    child: Column(
                                  children: [],
                                )),
                                //************************************************* */
                                Container(
                                    height: 20,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                              item.fullname.toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textDirection: TextDirection.rtl,
                                            )),
                                            Expanded(
                                                child: Text(
                                              "نام و نام خانوادگی :",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                              ),
                                              textDirection: TextDirection.rtl,
                                            )),
                                          ],
                                        )
                                      ],
                                    )),
                                //************************************************************ */
                                SizedBox(
                                  height: 20,
                                ),
                                //************************************************************ */
                                Container(
                                    height: 20,
                                    color: Color.fromARGB(255, 218, 211, 211),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                              item.doctor_name.toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textDirection: TextDirection.rtl,
                                            )),
                                            Expanded(
                                                child: Text(
                                              "نام پزشک :",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                              ),
                                              textDirection: TextDirection.rtl,
                                            )),
                                          ],
                                        )
                                      ],
                                    )),
                                //************************************************************ */
                                SizedBox(
                                  height: 20,
                                ),
                                //************************************************************ */

                                //************************************************************ */
                                Container(
                                    height: 20,
                                    color: Color.fromARGB(255, 218, 211, 211),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                              item.takhasos.toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textDirection: TextDirection.rtl,
                                            )),
                                            Expanded(
                                                child: Text(
                                              " تخصص :",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                              ),
                                              textDirection: TextDirection.rtl,
                                            )),
                                          ],
                                        )
                                      ],
                                    )),
                                //************************************************************ */
                                SizedBox(
                                  height: 20,
                                ),
                                //************************************************************ */
                                Container(
                                    height: 20,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                              item.personal_id.toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textDirection: TextDirection.rtl,
                                            )),
                                            Expanded(
                                                child: Text(
                                              "کد ملی :",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                              ),
                                              textDirection: TextDirection.rtl,
                                            )),
                                          ],
                                        )
                                      ],
                                    )),
                                //************************************************************ */

                                //************************************************************ */
                                SizedBox(
                                  height: 20,
                                ),
                                //************************************************************ */
                                Container(
                                    height: 20,
                                    color: Color.fromARGB(255, 218, 211, 211),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                              item.phone.toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textDirection: TextDirection.rtl,
                                            )),
                                            Expanded(
                                                child: Text(
                                              "تلفن تماس :",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                              ),
                                              textDirection: TextDirection.rtl,
                                            )),
                                          ],
                                        )
                                      ],
                                    )),
                                //************************************************************ */
                                SizedBox(
                                  height: 20,
                                ),
                                //************************************************************ */
                                Container(
                                    height: 20,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                              item.date_time.toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textDirection: TextDirection.rtl,
                                            )),
                                            Expanded(
                                                child: Text(
                                              "تاریخ حضور : ",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                              ),
                                              textDirection: TextDirection.rtl,
                                            )),
                                          ],
                                        )
                                      ],
                                    )),
                                //************************************************************ */
                                SizedBox(
                                  height: 20,
                                ),
                                //************************************************************ */
                                Container(
                                    height: 20,
                                    color: Color.fromARGB(255, 218, 211, 211),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                              item.time.toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textDirection: TextDirection.rtl,
                                            )),
                                            Expanded(
                                                child: Text(
                                              "ساعت حضور :",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                              ),
                                              textDirection: TextDirection.rtl,
                                            )),
                                          ],
                                        )
                                      ],
                                    )),
                                //************************************************************ */
                                SizedBox(
                                  height: 20,
                                ),
                                //************************************************************ */
                                Container(
                                    height: 20,
                                    color: Color.fromARGB(255, 218, 211, 211),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                              item.price.toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textDirection: TextDirection.rtl,
                                            )),
                                            Expanded(
                                                child: Text(
                                              "  هزینه ویزیت :",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                              ),
                                              textDirection: TextDirection.rtl,
                                            )),
                                          ],
                                        )
                                      ],
                                    )),
                                //************************************************************ */

                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 126, 241, 164),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: IconButton(
                                            onPressed: () async {
                                              await PAY_FACTOR_SERVICE
                                                  .delete_user_factor(item.id!);
                                              Navigator.pop(context);
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return PAY_SCREEN();
                                              }));
                                            },
                                            icon: Icon(Icons.delete),
                                            color: Colors.red,
                                          ),
                                        ),
                                        Expanded(
                                            child: Text(
                                          "** رسید پرداخت و تایید شده **",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500),
                                        )),
                                      ],
                                    )),
                                SizedBox(
                                  height: 20,
                                )
                                //************************************************************ */
                              ],
                            ),
                          );
                        },
                      );
                    }))));
  }
}
