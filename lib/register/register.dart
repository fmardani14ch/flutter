import 'package:flutter/material.dart';
import 'package:nobat_online/models/doctor_register.dart';
import 'package:nobat_online/models/user_factor.dart';
import 'package:nobat_online/screen_viewer/reserv_geust.dart';
import 'package:nobat_online/screen_viewer/user_factor_view.dart';
import 'package:nobat_online/services/user_factor_services.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

TextEditingController idcontroler = TextEditingController();
TextEditingController fullnamecontroler = TextEditingController();
TextEditingController fathernamecontroler = TextEditingController();
TextEditingController personalidcontroler = TextEditingController();
TextEditingController phonecontroler = TextEditingController();
TextEditingController pricecontroler = TextEditingController();
TextEditingController doctor_namecontroler = TextEditingController();
TextEditingController date_timelcontroler = TextEditingController();
TextEditingController takhasoscontroler = TextEditingController();
TextEditingController timecontroler = TextEditingController();

class Register extends StatefulWidget {
  Register({super.key, required this.drm});
  DOCTOR_REGISTER_MODEL drm;
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  //************************************************ */

  Jalali? date_time;
//********************************************************** */
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print(dr_name);
    print(dr_takhasos);
    print(dr_date);
    print(dr_price);
    doctor_namecontroler.text = dr_name;
    takhasoscontroler.text = dr_takhasos;
    date_timelcontroler.text = dr_date;
    pricecontroler.text = dr_price;
    timecontroler.text = time;

    /******************************************************** */
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
                textDirection: TextDirection.rtl,
                children: [
                  //************************************************ */
                  SizedBox(
                    height: 30,
                  ),
                  //**********************************************/
                  Text(
                    "* لطفا در ثبت اطلاعات شخصی دقت فرمایید \n* اعتبار نوبت اخد شده مشروط بر حضور پزشک\n   مربوطه می باشد\n* ساعت حضور بیمار روز قبل از نوبت \n  طی تماس تلفنی اطلاع رسانی  خواهد شد",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.redAccent),
                    textDirection: TextDirection.rtl,
                  ),
                  //************************************************ */
                  SizedBox(
                    height: 30,
                  ),
                  //************************************************ */

                  Form(
                      key: formkey,
                      child: Column(
                        children: [
                          //************************************************ */

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
                                  Icons.people_rounded,
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
                                  Icons.face_6,
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
                              keyboardType: TextInputType.text,
                              controller: timecontroler,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                icon: Icon(
                                  Icons.watch,
                                ),
                                hintText: "  ساعت حضور  ",
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
                                  Icons.watch,
                                ),
                                hintText: "هزینه ویزیت",
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
                              controller: fullnamecontroler,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                icon: Icon(
                                  Icons.face,
                                ),
                                hintText: "نام و نام خانوادگی",
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
                              controller: fathernamecontroler,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                icon: Icon(
                                  Icons.face_6,
                                ),
                                hintText: "نام پدر",
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
                              maxLength: 10,
                              keyboardType: TextInputType.number,
                              controller: personalidcontroler,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  icon: Icon(
                                    Icons.card_membership,
                                  ),
                                  hintText: " کدملی خود را وارد کنید"),
                              textAlign: TextAlign.right),

                          //************************************************ */
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                              maxLength: 11,
                              keyboardType: TextInputType.phone,
                              controller: phonecontroler,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  icon: Icon(
                                    Icons.mobile_friendly,
                                  ),
                                  hintText:
                                      " شماره تلفن یا موبایل خود را وارد کنید"),
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
                        var idc = idcontroler.text;
                        if (formkey.currentState!.validate()) {
                          USER_FACTOR_SERVICE.get_user_factor_data();
                          await USER_FACTOR_SERVICE.add_user_factor(
                              USER_FACTOR_MODEL(
                                  id: int.tryParse(idc),
                                  fullname: fullnamecontroler.text,
                                  doctor_name: doctor_namecontroler.text,
                                  father_name: fathernamecontroler.text,
                                  personal_id: personalidcontroler.text,
                                  takhasos: takhasoscontroler.text,
                                  date_time: date_timelcontroler.text,
                                  time: timecontroler.text,
                                  price: pricecontroler.text,
                                  phone: phonecontroler.text));
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return VIEW_RESERV();
                          }));
                        }
                      },
                      child: Text(
                        "ثبت نام",
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

var validuser = (value) {
  if (value == null || value.length < 1) {
    return "";
  } else
    return null;
};
