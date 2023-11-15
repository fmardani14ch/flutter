import 'package:flutter/material.dart';
import 'package:nobat_online/screen_viewer/reserv_geust.dart';
import 'package:nobat_online/services/pay_factor_services.dart';
import 'package:nobat_online/services/user_factor_services.dart';
import 'package:nobat_online/models/pay_factor.dart';
import 'package:nobat_online/screen_viewer/payed_screen.dart';

class VIEW_RESERV extends StatefulWidget {
  const VIEW_RESERV({super.key});

  @override
  State<VIEW_RESERV> createState() => _VIEW_RESERVState();
}

class _VIEW_RESERVState extends State<VIEW_RESERV> {
  @override
  Widget build(BuildContext context) {
    //*********************************************************** */

    var factor = USER_FACTOR_SERVICE.user_factor_list.value;

    //********************************************* */
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
                    valueListenable: USER_FACTOR_SERVICE.user_factor_list,
                    builder: (context, value, index) {
                      return ListView.builder(
                        itemCount:
                            USER_FACTOR_SERVICE.user_factor_list.value.length,
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
                                Container(
                                    height: 20,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                              item.father_name.toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textDirection: TextDirection.rtl,
                                            )),
                                            Expanded(
                                                child: Text(
                                              "نام پدر :",
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
                                              " هزینه ویزیت :",
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
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: IconButton(
                                            onPressed: () async {
                                              await USER_FACTOR_SERVICE
                                                  .delete_user_factor(item.id!);
                                              Navigator.pop(context);
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return VIEW_RESERV();
                                              }));
                                            },
                                            icon: Icon(Icons.delete),
                                            color: Colors.red,
                                          ),
                                        ),
                                        Expanded(
                                            child: TextButton(
                                                onPressed: () async {
                                                  await PAY_FACTOR_SERVICE
                                                      .add_user_factor(
                                                          PAY_FACTOR_MODEL(
                                                              id: int.tryParse(item
                                                                  .id
                                                                  .toString()),
                                                              fullname: item
                                                                  .fullname,
                                                              doctor_name: item
                                                                  .doctor_name,
                                                              father_name: item
                                                                  .father_name,
                                                              personal_id: item
                                                                  .personal_id,
                                                              takhasos:
                                                                  item.takhasos,
                                                              date_time: item
                                                                  .date_time,
                                                              time: item.time,
                                                              price: item.price,
                                                              phone:
                                                                  item.phone));

                                                  Navigator.pop(context);
                                                  await USER_FACTOR_SERVICE
                                                      .delete_user_factor(
                                                          item.id!);
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return PAY_SCREEN();
                                                  }));
                                                },
                                                child: Text(
                                                    "پرداخت و ثبت نهایی "))),
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
