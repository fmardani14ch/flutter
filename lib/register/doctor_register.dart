import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nobat_online/models/doctor_register.dart';
import 'package:nobat_online/screen_viewer/reserv.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:nobat_online/services/doctor_register_services.dart';

class ADDRESERV extends StatefulWidget {
  const ADDRESERV({super.key});

  @override
  State<ADDRESERV> createState() => _ADDRESERVState();
}

class _ADDRESERVState extends State<ADDRESERV> {
  Jalali? date_time;
///////////////
  final TextEditingController idcontroler = TextEditingController();
  final TextEditingController codcontroler = TextEditingController();
  final TextEditingController doctor_namecontroler = TextEditingController();
  final TextEditingController date_timelcontroler = TextEditingController();
  final TextEditingController takhasoscontroler = TextEditingController();
  final TextEditingController lengthcontroler = TextEditingController();
  final TextEditingController timecontroler = TextEditingController();
  final TextEditingController pricecontroler = TextEditingController();
  final pricetext = "  هزار تومان";
  //***************************************  */

  var empty = "empty";

  final formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_left),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            textDirection: TextDirection.rtl,
            children: [
              //*************************************** */
              Container(
                child: Image.asset("assets/images/registerr.jpg"),
                width: double.infinity,
              ),
              Column(
                //****************************************** */
                textDirection: TextDirection.rtl,
                children: [
                  //************************************************ */
                  SizedBox(
                    height: 30,
                  ),
                  //**********************************************/

                  //************************************************ */

                  //************************************************ */

                  Form(
                      key: formkey,
                      child: Column(
                        children: [
                          TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.text,
                              controller: doctor_namecontroler,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                icon: Icon(
                                  Icons.person_pin,
                                ),
                                hintText: " نام پزشک مربوطه را وارد کنید",
                              ),
                              textAlign: TextAlign.right),
                          //************************************************ */
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                              onTap: () async {
                                date_time = await showPersianDatePicker(
                                  context: context,
                                  initialDate: Jalali.now(),
                                  firstDate: Jalali(1401, 8),
                                  lastDate: Jalali(1499, 9),
                                );
                                date_timelcontroler.text =
                                    date_time?.formatFullDate() ?? "";
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "";
                                } else {
                                  return null;
                                }
                              },
                              controller: date_timelcontroler,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  icon: Icon(
                                    Icons.date_range,
                                  ),
                                  hintText: " تاریخ نوبت را وارد کنید"),
                              textAlign: TextAlign.right),
                          //************************************************ */

                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.text,
                              controller: takhasoscontroler,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                icon: Icon(
                                  Icons.subject,
                                ),
                                hintText: " تخصص",
                              ),
                              textAlign: TextAlign.right),
                          //************************************************ */
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.number,
                              controller: codcontroler,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                icon: Icon(
                                  Icons.code,
                                ),
                                hintText: "  کد پزشک ",
                              ),
                              textAlign: TextAlign.right),
                          //************************************************ */
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.text,
                              controller: lengthcontroler,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                icon: Icon(
                                  Icons.people,
                                ),
                                hintText: " حداکثر تعداد نفرات جهت معاینه",
                              ),
                              textAlign: TextAlign.right),
                          //************************************************ */
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.text,
                              controller: timecontroler,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                icon: Icon(
                                  Icons.timer,
                                ),
                                hintText: " ساعت حضور",
                              ),
                              textAlign: TextAlign.right),
                          //************************************************ */
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.text,
                              controller: pricecontroler,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                icon: Icon(
                                  Icons.price_check_outlined,
                                ),
                                hintText: " هزینه ویزیت",
                              ),
                              textAlign: TextAlign.right),
                          //************************************************ */
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  //******************************************** */
                  ElevatedButton(
                      onPressed: () async {
                        if (formkey.currentState!.validate()) {
                          var idc = idcontroler.text;

                          await DOCTOR_RIGESTER_SERVICE.add_doctor_by_cod(
                              DOCTOR_REGISTER_MODEL(
                                  id: int.tryParse(idc),
                                  date_time: date_timelcontroler.text,
                                  takhasos: takhasoscontroler.text,
                                  doctor_name: doctor_namecontroler.text,
                                  length: lengthcontroler.text,
                                  time: timecontroler.text,
                                  cod: codcontroler.text,
                                  price: pricecontroler.text + pricetext));
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Reserv();
                          }));
                        }
                      },
                      child: Text(
                        "ثبت ",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 14),
                      )),
                  //************************************************ */
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
