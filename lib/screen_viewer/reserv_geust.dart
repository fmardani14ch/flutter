import 'package:flutter/material.dart';
import 'package:nobat_online/register/register.dart';
import 'package:nobat_online/screen_viewer/payed_screen.dart';
import 'package:nobat_online/screen_viewer/user_factor_view.dart';
import 'package:nobat_online/services/doctor_register_services.dart';

class Reserv_geust extends StatefulWidget {
  const Reserv_geust({
    super.key,
  });

  @override
  State<Reserv_geust> createState() => _ReservState();
}

var dr_name = '';
var dr_takhasos = '';
var dr_date = '';
var dr_price = '';
var time = '';
//***************************************** */
TextEditingController search_personalidcontroler = TextEditingController();
//***************************************** */

class _ReservState extends State<Reserv_geust> {
  int _selectedItemIndex = 0;
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

  //************************************** */
  @override
  void initState() {
    DOCTOR_RIGESTER_SERVICE.getdoctort_register_data();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //**************************************** */
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

    //************************************************** */
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      //************************************************ */
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedItemIndex,
          onTap: (index) {
            setState(() {
              _selectedItemIndex = index;
            });
            if (_selectedItemIndex == 0) {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return VIEW_RESERV();
              }));
            } else {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PAY_SCREEN();
              }));
            }
          },
          items: [
            BottomNavigationBarItem(
                label: "نوبت های ثبت نشده",
                icon: Icon(
                  Icons.dangerous,
                  color: Colors.redAccent,
                )),
            BottomNavigationBarItem(
                label: "نوبت های ثبت شده",
                icon: Icon(
                  Icons.history,
                  color: Colors.greenAccent,
                )),
            //****************************** */ */
          ]),
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
                                  text: "  ارتوپد",
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
                                              Expanded(
                                                  child: Text(
                                                      item.price.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                "هزینه ویزیت : ",
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
                                                      setState(() {
                                                        dr_name = item
                                                            .doctor_name
                                                            .toString();
                                                        dr_takhasos = item
                                                            .takhasos
                                                            .toString();
                                                        dr_date = item.date_time
                                                            .toString();
                                                        dr_price = item.price
                                                            .toString();
                                                        time = item.time
                                                            .toString();
                                                      });
                                                      Navigator.pop(context);

                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Register(
                                                          drm: item,
                                                        );
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.add_card,
                                                      color: Colors.greenAccent,
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
                                              Expanded(
                                                  child: Text(
                                                      item.price.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                "هزینه ویزیت : ",
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
                                                      setState(() {
                                                        dr_name = item
                                                            .doctor_name
                                                            .toString();
                                                        dr_takhasos = item
                                                            .takhasos
                                                            .toString();
                                                        dr_date = item.date_time
                                                            .toString();
                                                        dr_price = item.price
                                                            .toString();
                                                        time = item.time
                                                            .toString();
                                                      });
                                                      Navigator.pop(context);

                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Register(
                                                          drm: item,
                                                        );
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.add_card,
                                                      color: Colors.greenAccent,
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
                                              Expanded(
                                                  child: Text(
                                                      item.price.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                "هزینه ویزیت : ",
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
                                                      setState(() {
                                                        dr_name = item
                                                            .doctor_name
                                                            .toString();
                                                        dr_takhasos = item
                                                            .takhasos
                                                            .toString();
                                                        dr_date = item.date_time
                                                            .toString();
                                                        dr_price = item.price
                                                            .toString();
                                                        time = item.time
                                                            .toString();
                                                      });
                                                      Navigator.pop(context);

                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Register(
                                                          drm: item,
                                                        );
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.add_card,
                                                      color: Colors.greenAccent,
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
                                              Expanded(
                                                  child: Text(
                                                      item.price.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                "هزینه ویزیت : ",
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
                                                      setState(() {
                                                        dr_name = item
                                                            .doctor_name
                                                            .toString();
                                                        dr_takhasos = item
                                                            .takhasos
                                                            .toString();
                                                        dr_date = item.date_time
                                                            .toString();
                                                        dr_price = item.price
                                                            .toString();
                                                        time = item.time
                                                            .toString();
                                                      });
                                                      Navigator.pop(context);

                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Register(
                                                          drm: item,
                                                        );
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.add_card,
                                                      color: Colors.greenAccent,
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
                                              Expanded(
                                                  child: Text(
                                                      item.price.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                "هزینه ویزیت : ",
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
                                                      setState(() {
                                                        dr_name = item
                                                            .doctor_name
                                                            .toString();
                                                        dr_takhasos = item
                                                            .takhasos
                                                            .toString();
                                                        dr_date = item.date_time
                                                            .toString();
                                                        dr_price = item.price
                                                            .toString();
                                                        time = item.time
                                                            .toString();
                                                      });
                                                      Navigator.pop(context);

                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Register(
                                                          drm: item,
                                                        );
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.add_card,
                                                      color: Colors.greenAccent,
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
                                              Expanded(
                                                  child: Text(
                                                      item.price.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                "هزینه ویزیت : ",
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
                                                      setState(() {
                                                        dr_name = item
                                                            .doctor_name
                                                            .toString();
                                                        dr_takhasos = item
                                                            .takhasos
                                                            .toString();
                                                        dr_date = item.date_time
                                                            .toString();
                                                        dr_price = item.price
                                                            .toString();
                                                        time = item.time
                                                            .toString();
                                                      });
                                                      Navigator.pop(context);

                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Register(
                                                          drm: item,
                                                        );
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.add_card,
                                                      color: Colors.greenAccent,
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
                                              Expanded(
                                                  child: Text(
                                                      item.price.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                "هزینه ویزیت : ",
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
                                                      setState(() {
                                                        dr_name = item
                                                            .doctor_name
                                                            .toString();
                                                        dr_takhasos = item
                                                            .takhasos
                                                            .toString();
                                                        dr_date = item.date_time
                                                            .toString();
                                                        dr_price = item.price
                                                            .toString();
                                                        time = item.time
                                                            .toString();
                                                      });
                                                      Navigator.pop(context);

                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Register(
                                                          drm: item,
                                                        );
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.add_card,
                                                      color: Colors.greenAccent,
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
                                              Expanded(
                                                  child: Text(
                                                      item.price.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                "هزینه ویزیت : ",
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
                                                      setState(() {
                                                        dr_name = item
                                                            .doctor_name
                                                            .toString();
                                                        dr_takhasos = item
                                                            .takhasos
                                                            .toString();
                                                        dr_date = item.date_time
                                                            .toString();
                                                        dr_price = item.price
                                                            .toString();
                                                        time = item.time
                                                            .toString();
                                                      });
                                                      Navigator.pop(context);

                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Register(
                                                          drm: item,
                                                        );
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.add_card,
                                                      color: Colors.greenAccent,
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
                                              Expanded(
                                                  child: Text(
                                                      item.price.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                "هزینه ویزیت : ",
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
                                                      setState(() {
                                                        dr_name = item
                                                            .doctor_name
                                                            .toString();
                                                        dr_takhasos = item
                                                            .takhasos
                                                            .toString();
                                                        dr_date = item.date_time
                                                            .toString();
                                                        dr_price = item.price
                                                            .toString();
                                                        time = item.time
                                                            .toString();
                                                      });
                                                      Navigator.pop(context);

                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Register(
                                                          drm: item,
                                                        );
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.add_card,
                                                      color: Colors.greenAccent,
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
                                              Expanded(
                                                  child: Text(
                                                      item.price.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                "هزینه ویزیت : ",
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
                                                      setState(() {
                                                        dr_name = item
                                                            .doctor_name
                                                            .toString();
                                                        dr_takhasos = item
                                                            .takhasos
                                                            .toString();
                                                        dr_date = item.date_time
                                                            .toString();
                                                        dr_price = item.price
                                                            .toString();
                                                        time = item.time
                                                            .toString();
                                                      });
                                                      Navigator.pop(context);

                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Register(
                                                          drm: item,
                                                        );
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.add_card,
                                                      color: Colors.greenAccent,
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
                                              Expanded(
                                                  child: Text(
                                                      item.price.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                "هزینه ویزیت : ",
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
                                                      setState(() {
                                                        dr_name = item
                                                            .doctor_name
                                                            .toString();
                                                        dr_takhasos = item
                                                            .takhasos
                                                            .toString();
                                                        dr_date = item.date_time
                                                            .toString();
                                                        dr_price = item.price
                                                            .toString();
                                                        time = item.time
                                                            .toString();
                                                      });
                                                      Navigator.pop(context);

                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Register(
                                                          drm: item,
                                                        );
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.add_card,
                                                      color: Colors.greenAccent,
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
                                              Expanded(
                                                  child: Text(
                                                      item.price.toString(),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textDirection:
                                                          TextDirection.rtl)),
                                              Expanded(
                                                  child: Text(
                                                "هزینه ویزیت : ",
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
                                                      setState(() {
                                                        dr_name = item
                                                            .doctor_name
                                                            .toString();
                                                        dr_takhasos = item
                                                            .takhasos
                                                            .toString();
                                                        dr_date = item.date_time
                                                            .toString();
                                                        dr_price = item.price
                                                            .toString();
                                                        time = item.time
                                                            .toString();
                                                      });
                                                      Navigator.pop(context);

                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (builder) {
                                                        return Register(
                                                          drm: item,
                                                        );
                                                      }));
                                                    },
                                                    child: Icon(
                                                      Icons.add_card,
                                                      color: Colors.greenAccent,
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
                          SizedBox(
                            height: 10,
                          ),
                          //*********************************************** */

                          /**************************************** */
                        ],
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
