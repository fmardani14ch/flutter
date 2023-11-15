import 'package:flutter/material.dart';
import 'package:nobat_online/services/doctor_register_services.dart';
import 'package:nobat_online/register/doctor_register.dart';
import 'package:nobat_online/screen_viewer/comments.dart';
import 'package:nobat_online/services/user_factor_services.dart';

class Reserv extends StatefulWidget {
  const Reserv({super.key});

  @override
  State<Reserv> createState() => _ReservState();
}
//***************************************** */

//***************************************** */

class _ReservState extends State<Reserv> {
  @override
  void initState() {
    DOCTOR_RIGESTER_SERVICE.getdoctort_register_data();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var length = USER_FACTOR_SERVICE.user_factor_list.value.length;
    var zanan = DOCTOR_RIGESTER_SERVICE.doctor_register_list.value
        .where((element) => element.takhasos!.contains("زنان"))
        .toList();

    var orology = DOCTOR_RIGESTER_SERVICE.doctor_register_list.value
        .where((element) => element.takhasos!.contains("لوژی"))
        .toList();

    var dakheli = DOCTOR_RIGESTER_SERVICE.doctor_register_list.value
        .where((element) => element.takhasos!.contains("داخلی"))
        .toList();

    var shanavaie = DOCTOR_RIGESTER_SERVICE.doctor_register_list.value
        .where((element) => element.takhasos!.contains("شنوایی"))
        .toList();

    var ortoped = DOCTOR_RIGESTER_SERVICE.doctor_register_list.value
        .where((element) => element.takhasos!.contains("پد"))
        .toList();
    var aesabravan = DOCTOR_RIGESTER_SERVICE.doctor_register_list.value
        .where((element) => element.takhasos!.contains("روان"))
        .toList();
    var maghzoaesab = DOCTOR_RIGESTER_SERVICE.doctor_register_list.value
        .where((element) => element.takhasos!.contains("مغز"))
        .toList();

    var dahanodandan = DOCTOR_RIGESTER_SERVICE.doctor_register_list.value
        .where((element) => element.takhasos!.contains("دندان"))
        .toList();

    var chashmobinaie = DOCTOR_RIGESTER_SERVICE.doctor_register_list.value
        .where((element) => element.takhasos!.contains("چشم"))
        .toList();

    var ghalb = DOCTOR_RIGESTER_SERVICE.doctor_register_list.value
        .where((element) => element.takhasos!.contains("قلب"))
        .toList();

    var atfal = DOCTOR_RIGESTER_SERVICE.doctor_register_list.value
        .where((element) => element.takhasos!.contains("اطفال"))
        .toList();

    var poostomoo = DOCTOR_RIGESTER_SERVICE.doctor_register_list.value
        .where((element) => element.takhasos!.contains("پوست"))
        .toList();

    return Scaffold(
      //************************************************** */
      appBar: AppBar(),

      //************************************************ */

      //************************************************ */

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //******************************************* */
              SizedBox(
                height: 5,
              ),
              //******************************************* */
              Expanded(
                  child: DefaultTabController(
                      length: 12,
                      child: Column(
                        children: [
                          TabBar(
                              labelColor: const Color.fromARGB(255, 48, 28, 28),
                              isScrollable: true,
                              tabs: [
                                Tab(
                                  text: "زنان",
                                ),
                                Tab(
                                  text: " ارولوژی ",
                                ),
                                Tab(
                                  text: " داخلی ",
                                ),
                                Tab(
                                  text: "  شنوایی",
                                ),
                                Tab(
                                  text: "  ارتپد",
                                ),
                                Tab(
                                  text: " اعصاب و روان",
                                ),
                                Tab(
                                  text: " مغز و اعصاب ",
                                ),
                                Tab(
                                  text: " دهان و دندان",
                                ),
                                Tab(
                                  text: " چشم و بینایی",
                                ),
                                Tab(
                                  text: " قلب و عروق",
                                ),
                                Tab(
                                  text: " پوست و مو",
                                ),
                                Tab(
                                  text: " اطفال",
                                ),
                              ]),
                          SizedBox(
                            height: 10,
                          ),

                          Expanded(
                            child: TabBarView(
                              children: [
                                ////////////////////////////////////////////////////////////////
                                ///////////////////////////////////////////////////////////////
                                Container(
                                    child: ListView.builder(
                                  itemCount: zanan.length,
                                  itemBuilder: (context, index) {
                                    var item = zanan[index];
                                    return Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 20),
                                        child: Container(
                                            child: Column(children: [
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.doctor_name
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                child: Text(
                                                  "نام پزشک : ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                  textDirection:
                                                      TextDirection.rtl,
                                                ),
                                              ),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.takhasos.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تخصص : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.cod.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " کد پزشکی : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.date_time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تاریخ حضور پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " ساعت کاری پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Container(
                                                width: 20,
                                                child: TextButton(
                                                    onPressed: () async {
                                                      await DOCTOR_RIGESTER_SERVICE
                                                          .delete_doctor_by_cod(
                                                              item.id!);
                                                      Navigator.pop(context);
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Reserv();
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.delete_forever,
                                                      color: Colors.redAccent,
                                                    )),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                      item.length.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " حداکثر تعداد معاینات : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                        ])));
                                  },
                                )),
                                ////////////////////////////////////////////////////
                                ///
                                ///////////////////////////////////////////////////////////////////

                                Container(
                                    child: ListView.builder(
                                  itemCount: orology.length,
                                  itemBuilder: (context, index) {
                                    var item = orology[index];
                                    return Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 20),
                                        child: Container(
                                            child: Column(children: [
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.doctor_name
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                child: Text(
                                                  "نام پزشک : ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                  textDirection:
                                                      TextDirection.rtl,
                                                ),
                                              ),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.takhasos.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تخصص : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.cod.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " کد پزشکی : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.date_time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تاریخ حضور پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " ساعت کاری پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Container(
                                                width: 20,
                                                child: TextButton(
                                                    onPressed: () async {
                                                      await DOCTOR_RIGESTER_SERVICE
                                                          .delete_doctor_by_cod(
                                                              item.id!);
                                                      Navigator.pop(context);
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Reserv();
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.delete_forever,
                                                      color: Colors.redAccent,
                                                    )),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                      item.length.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " حداکثر تعداد معاینات : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                        ])));
                                  },
                                )),
                                ////////////////////////////////////////////////////
                                ///////////////////////////////////////////////////////////////////
                                Container(
                                    child: ListView.builder(
                                  itemCount: dakheli.length,
                                  itemBuilder: (context, index) {
                                    var item = dakheli[index];
                                    return Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 20),
                                        child: Container(
                                            child: Column(children: [
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.doctor_name
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                child: Text(
                                                  "نام پزشک : ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                  textDirection:
                                                      TextDirection.rtl,
                                                ),
                                              ),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.takhasos.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تخصص : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.cod.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " کد پزشکی : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.date_time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تاریخ حضور پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " ساعت کاری پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Container(
                                                width: 20,
                                                child: TextButton(
                                                    onPressed: () async {
                                                      await DOCTOR_RIGESTER_SERVICE
                                                          .delete_doctor_by_cod(
                                                              item.id!);
                                                      Navigator.pop(context);
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Reserv();
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.delete_forever,
                                                      color: Colors.redAccent,
                                                    )),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                      item.length.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " حداکثر تعداد معاینات : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                        ])));
                                  },
                                )),
                                ////////////////////////////////////////////////////
                                ///////////////////////////////////////////////////////////////////
                                Container(
                                    child: ListView.builder(
                                  itemCount: shanavaie.length,
                                  itemBuilder: (context, index) {
                                    var item = shanavaie[index];
                                    return Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 20),
                                        child: Container(
                                            child: Column(children: [
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.doctor_name
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                child: Text(
                                                  "نام پزشک : ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                  textDirection:
                                                      TextDirection.rtl,
                                                ),
                                              ),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.takhasos.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تخصص : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.cod.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " کد پزشکی : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.date_time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تاریخ حضور پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " ساعت کاری پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Container(
                                                width: 20,
                                                child: TextButton(
                                                    onPressed: () async {
                                                      await DOCTOR_RIGESTER_SERVICE
                                                          .delete_doctor_by_cod(
                                                              item.id!);
                                                      Navigator.pop(context);
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Reserv();
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.delete_forever,
                                                      color: Colors.redAccent,
                                                    )),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                      item.length.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " حداکثر تعداد معاینات : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                        ])));
                                  },
                                )),
                                ////////////////////////////////////////////////////
                                //////////////////////////////////////////////////////////////////////
                                Container(
                                    child: ListView.builder(
                                  itemCount: ortoped.length,
                                  itemBuilder: (context, index) {
                                    var item = ortoped[index];
                                    return Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 20),
                                        child: Container(
                                            child: Column(children: [
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.doctor_name
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                child: Text(
                                                  "نام پزشک : ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                  textDirection:
                                                      TextDirection.rtl,
                                                ),
                                              ),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.takhasos.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تخصص : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.cod.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " کد پزشکی : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.date_time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تاریخ حضور پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " ساعت کاری پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Container(
                                                width: 20,
                                                child: TextButton(
                                                    onPressed: () async {
                                                      await DOCTOR_RIGESTER_SERVICE
                                                          .delete_doctor_by_cod(
                                                              item.id!);
                                                      Navigator.pop(context);
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Reserv();
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.delete_forever,
                                                      color: Colors.redAccent,
                                                    )),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                      item.length.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " حداکثر تعداد معاینات : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                        ])));
                                  },
                                )),
                                ////////////////////////////////////////////////////
                                //////////////////////////////////////////////////////////////////////
                                Container(
                                    child: ListView.builder(
                                  itemCount: aesabravan.length,
                                  itemBuilder: (context, index) {
                                    var item = aesabravan[index];
                                    return Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 20),
                                        child: Container(
                                            child: Column(children: [
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.doctor_name
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                child: Text(
                                                  "نام پزشک : ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                  textDirection:
                                                      TextDirection.rtl,
                                                ),
                                              ),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.takhasos.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تخصص : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.cod.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " کد پزشکی : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.date_time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تاریخ حضور پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " ساعت کاری پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Container(
                                                width: 20,
                                                child: TextButton(
                                                    onPressed: () async {
                                                      await DOCTOR_RIGESTER_SERVICE
                                                          .delete_doctor_by_cod(
                                                              item.id!);
                                                      Navigator.pop(context);
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Reserv();
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.delete_forever,
                                                      color: Colors.redAccent,
                                                    )),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                      item.length.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " حداکثر تعداد معاینات : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                        ])));
                                  },
                                )),
                                ////////////////////////////////////////////////////
                                //////////////////////////////////////////////////////////////////////
                                Container(
                                    child: ListView.builder(
                                  itemCount: maghzoaesab.length,
                                  itemBuilder: (context, index) {
                                    var item = maghzoaesab[index];
                                    return Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 20),
                                        child: Container(
                                            child: Column(children: [
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.doctor_name
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                child: Text(
                                                  "نام پزشک : ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                  textDirection:
                                                      TextDirection.rtl,
                                                ),
                                              ),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.takhasos.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تخصص : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.cod.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " کد پزشکی : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.date_time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تاریخ حضور پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " ساعت کاری پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Container(
                                                width: 20,
                                                child: TextButton(
                                                    onPressed: () async {
                                                      await DOCTOR_RIGESTER_SERVICE
                                                          .delete_doctor_by_cod(
                                                              item.id!);
                                                      Navigator.pop(context);
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Reserv();
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.delete_forever,
                                                      color: Colors.redAccent,
                                                    )),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                      item.length.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " حداکثر تعداد معاینات : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                        ])));
                                  },
                                )),
                                ////////////////////////////////////////////////////
                                //////////////////////////////////////////////////////////////////////
                                Container(
                                    child: ListView.builder(
                                  itemCount: dahanodandan.length,
                                  itemBuilder: (context, index) {
                                    var item = dahanodandan[index];
                                    return Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 20),
                                        child: Container(
                                            child: Column(children: [
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.doctor_name
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                child: Text(
                                                  "نام پزشک : ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                  textDirection:
                                                      TextDirection.rtl,
                                                ),
                                              ),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.takhasos.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تخصص : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.cod.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " کد پزشکی : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.date_time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تاریخ حضور پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " ساعت کاری پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Container(
                                                width: 20,
                                                child: TextButton(
                                                    onPressed: () async {
                                                      await DOCTOR_RIGESTER_SERVICE
                                                          .delete_doctor_by_cod(
                                                              item.id!);
                                                      Navigator.pop(context);
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Reserv();
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.delete_forever,
                                                      color: Colors.redAccent,
                                                    )),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                      item.length.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " حداکثر تعداد معاینات : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                        ])));
                                  },
                                )),
                                ////////////////////////////////////////////////////
                                //////////////////////////////////////////////////////////////////////
                                Container(
                                    child: ListView.builder(
                                  itemCount: chashmobinaie.length,
                                  itemBuilder: (context, index) {
                                    var item = chashmobinaie[index];
                                    return Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 20),
                                        child: Container(
                                            child: Column(children: [
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.doctor_name
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                child: Text(
                                                  "نام پزشک : ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                  textDirection:
                                                      TextDirection.rtl,
                                                ),
                                              ),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.takhasos.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تخصص : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.cod.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " کد پزشکی : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.date_time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تاریخ حضور پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " ساعت کاری پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Container(
                                                width: 20,
                                                child: TextButton(
                                                    onPressed: () async {
                                                      await DOCTOR_RIGESTER_SERVICE
                                                          .delete_doctor_by_cod(
                                                              item.id!);
                                                      Navigator.pop(context);
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Reserv();
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.delete_forever,
                                                      color: Colors.redAccent,
                                                    )),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                      item.length.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " حداکثر تعداد معاینات : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                        ])));
                                  },
                                )),
                                ////////////////////////////////////////////////////
                                //////////////////////////////////////////////////////////////////////
                                Container(
                                    child: ListView.builder(
                                  itemCount: ghalb.length,
                                  itemBuilder: (context, index) {
                                    var item = ghalb[index];
                                    return Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 20),
                                        child: Container(
                                            child: Column(children: [
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.doctor_name
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                child: Text(
                                                  "نام پزشک : ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                  textDirection:
                                                      TextDirection.rtl,
                                                ),
                                              ),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.takhasos.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تخصص : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.cod.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " کد پزشکی : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.date_time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تاریخ حضور پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " ساعت کاری پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Container(
                                                width: 20,
                                                child: TextButton(
                                                    onPressed: () async {
                                                      await DOCTOR_RIGESTER_SERVICE
                                                          .delete_doctor_by_cod(
                                                              item.id!);
                                                      Navigator.pop(context);
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Reserv();
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.delete_forever,
                                                      color: Colors.redAccent,
                                                    )),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                      item.length.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " حداکثر تعداد معاینات : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                        ])));
                                  },
                                )),
                                ////////////////////////////////////////////////////
                                //////////////////////////////////////////////////////////////////////
                                Container(
                                    child: ListView.builder(
                                  itemCount: poostomoo.length,
                                  itemBuilder: (context, index) {
                                    var item = poostomoo[index];
                                    return Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 20),
                                        child: Container(
                                            child: Column(children: [
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.doctor_name
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                child: Text(
                                                  "نام پزشک : ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                  textDirection:
                                                      TextDirection.rtl,
                                                ),
                                              ),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.takhasos.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تخصص : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.cod.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " کد پزشکی : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.date_time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تاریخ حضور پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " ساعت کاری پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Container(
                                                width: 20,
                                                child: TextButton(
                                                    onPressed: () async {
                                                      await DOCTOR_RIGESTER_SERVICE
                                                          .delete_doctor_by_cod(
                                                              item.id!);
                                                      Navigator.pop(context);
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Reserv();
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.delete_forever,
                                                      color: Colors.redAccent,
                                                    )),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                      item.length.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " حداکثر تعداد معاینات : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                        ])));
                                  },
                                )),
                                ////////////////////////////////////////////////////
                                //////////////////////////////////////////////////////////////////////
                                Container(
                                    child: ListView.builder(
                                  itemCount: atfal.length,
                                  itemBuilder: (context, index) {
                                    var item = atfal[index];
                                    return Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 20),
                                        child: Container(
                                            child: Column(children: [
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.doctor_name
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                child: Text(
                                                  "نام پزشک : ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                  textDirection:
                                                      TextDirection.rtl,
                                                ),
                                              ),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.takhasos.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تخصص : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.cod.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " کد پزشکی : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.date_time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " تاریخ حضور پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                      item.time.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " ساعت کاری پزشک : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                          Container(
                                              child: Row(
                                            children: [
                                              Container(
                                                width: 20,
                                                child: TextButton(
                                                    onPressed: () async {
                                                      await DOCTOR_RIGESTER_SERVICE
                                                          .delete_doctor_by_cod(
                                                              item.id!);
                                                      Navigator.pop(context);
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Reserv();
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.delete_forever,
                                                      color: Colors.redAccent,
                                                    )),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                      item.length.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                " حداکثر تعداد معاینات : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textDirection:
                                                    TextDirection.rtl,
                                              )),
                                            ],
                                          )),
                                        ])));
                                  },
                                )),
                                ///////////////////////////////////////////////
                                /////////////////////////////////////////////////
                              ],
                            ),
                          ),
                          //*********************************************** */
                          SizedBox(
                            height: 60,
                            child: Row(
                              children: [
                                Expanded(
                                    child: Container(
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Container(
                                              child: Text(length.toString())),
                                          Container(
                                              child:
                                                  Text(": تعداد کل نوبت ها")),
                                        ],
                                      )),
                                )),

                                //************************ */
                                Expanded(
                                    child: Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                      child: TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (builder) {
                                                return COMENTS();
                                              }),
                                            );
                                          },
                                          child: Icon(Icons.comment)),
                                    )),
                                    Expanded(
                                        child: Container(
                                      child: TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (builder) {
                                                return ADDRESERV();
                                              }),
                                            );
                                          },
                                          child: Icon(Icons.add)),
                                    )),
                                  ],
                                ))
                              ],
                            ),
                          ), /**************************************** */
                        ],
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
