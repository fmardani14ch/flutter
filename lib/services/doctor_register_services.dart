import "package:nobat_online/models/doctor_register.dart";
import "package:nobat_online/utils/http_client.dart";
import 'package:flutter/material.dart';

//##############################################################################

// get()   / json_to_dart برای دریافت اطلاعات از سرور از متد گِت و تبدیل دارت به جیسان استفاده میشود
// post()  / post_to_json برای ارسال اطلاعات از سرور از متد پست و تبدیل جیسان به دارت استفاده میشود
// put()  / post_to_json برای ویرایش اطلاعات از سرور از متد پست و تبدیل جیسان به دارت استفاده میشود

//##############################################################################
//##############################################################################

class DOCTOR_RIGESTER_SERVICE {
  //******************** ایجاد متغیری خالی برای بروز رسانی لحظه ای اطلاعات */
  static ValueNotifier<List<DOCTOR_REGISTER_MODEL>> doctor_register_list =
      ValueNotifier([]);
  //******************************************** گرفتن اطلاعات تمام دیتا بیس */
  static Future<List<DOCTOR_REGISTER_MODEL>> getdoctort_register_data() async {
    //************************json متغیری برای دریافت اطلاعات به صورت جیسان */
    var response = await httpClient.get("oxzuxe/data");
    // ایجاد شرط اگر دریافت اطلاعات صحیح بود یا از طرف سرور پاسخی ارسال شد*/
    if (response.statusCode == 200 || response.statusCode == 201) {
      //************** لیست مقادیر دریافتی پس از خوانده شدن مجدد خالی شود */
      doctor_register_list.value = [];
      //***************** برای تمام یا تک تک مقادیر ارسال شده از سمت سرور */
      for (var element in response.data) {
        //********* تمام مقادیر لیست شده را به صورت جیسان در کلاس دخیره کن */
        doctor_register_list.value.add(DOCTOR_REGISTER_MODEL.fromJson(element));
      }
      //************ بازگردانی یا خواندن مقادیر درون لیست مربوط به خط اول */
      return doctor_register_list.value;
    }
    //**** در غیر این صورت اگر سرور پاسخ نداد یا مشکل داشت ارور نشان بده */
    throw Exception("error");
  }

//##############################################################################
//##############################################################################

  //****************** گرفتن اطلاعات بر اساس کد پزشکی یا تخصص یا فیلتر خاص */
  static Future<List<DOCTOR_REGISTER_MODEL>> getdoctor_by_takhasos(
      String takhasos) async {
    var response = await httpClient.get("oxzuxe/data?takhasos=$takhasos");
    if (response.statusCode == 200 || response.statusCode == 201) {
      doctor_register_list.value = [];
      for (var element in response.data) {
        doctor_register_list.value.add(DOCTOR_REGISTER_MODEL.fromJson(element));
      }
      return doctor_register_list.value;
    }
    throw Exception("error");
  }

//##############################################################################
//##############################################################################

//************************* post() ثبت یا ارسال اطلاعات  در دیتابیس بامتد پست */
//***  مقادیری که قرار است در دیتابیس دخیره شود پس از فراخوانی نام کلاس و
//*** یک متغیر که بهتر است هم نام کلاس ولی با نام کوچکتر باشد ارسال میشود */
  static Future<DOCTOR_REGISTER_MODEL> add_doctor_by_cod(
      DOCTOR_REGISTER_MODEL doctor_register_model) async {
    //سپس با یک متغیر، یک درخواست  که میخواهیم اطاعات رااز نوع متد پست و
    //***************************  تبدیل دارت به جیسان به سرور ارسال میکنم */
    var response = await httpClient.post("oxzuxe/data",
        data: doctor_register_model.toJson());
    //*********** اگر شرط بر قرار بود و سرور به ما پاسخ صحیح یا قبولی داد */
    if (response.statusCode == 200 || response.statusCode == 201) {
      //******************************************* اطلاعات را ارسال می کنیم */
      await getdoctort_register_data();
      return DOCTOR_REGISTER_MODEL.fromJson(response.data);
    }
    //**** در غیر این صورت اگر سرور پاسخ نداد یا مشکل داشت ارور نشان بده */
    throw Exception("error");
  }

//##############################################################################
//##############################################################################

//********** put() آپدیت یا ویرایش اطلاعات  در دیتابیس بامتد پست ***********/
//***   مقادیری که قرار است در دیتابیس ویرایش شود پس از فراخوانی نام کلاس و
//***  idیک متغیر که بهتر است هم نام کلاس ولی با نام کوچکتر باشد و یک متغیر
//************************************************************* ارسال میشود  /
  static Future<DOCTOR_REGISTER_MODEL> update_doctor_by_cod(
      {required DOCTOR_REGISTER_MODEL doctor_register_model,
      required int doctor_register_model_id}) async {
    // سپس با یک متغیر، یک درخواست  که میخواهیم اطاعات رااز نوع متد پوت و
    //******  تبدیل دارت به جیسان به سرور به همراه متغیر آیدی ارسال میکنم */
    var response = await httpClient.put("oxzuxe/data/$doctor_register_model_id",
        data: doctor_register_model.toJson());
    //*********** اگر شرط بر قرار بود و سرور به ما پاسخ صحیح یا قبولی داد */
    if (response.statusCode == 200 || response.statusCode == 201) {
      //******************************* اطلاعات ویرایش شده را ارسال می کنیم */
      await getdoctort_register_data();
      return DOCTOR_REGISTER_MODEL.fromJson(response.data);
    }
    //**** در غیر این صورت اگر سرور پاسخ نداد یا مشکل داشت ارور نشان بده */
    throw Exception("error");
  }

//##############################################################################
//##############################################################################
  static Future<DOCTOR_REGISTER_MODEL> delete_doctor_by_cod(int id) async {
    // سپس با یک متغیر، یک درخواست  که میخواهیم اطاعات رااز نوع مِتد دِلیت و
    //*********** متغیر آیدی اطلاعاتی که برای حذف انتخاب کردیم ارسال میکنیم*/
    var response = await httpClient.delete(
      "oxzuxe/data/$id",
    );
    //*********** اگر شرط بر قرار بود و سرور به ما پاسخ صحیح یا قبولی داد */
    if (response.statusCode == 200 || response.statusCode == 201) {
      //******************************* اطلاعات حذفی را ارسال می کنیم */
      await getdoctort_register_data();
      return DOCTOR_REGISTER_MODEL.fromJson(response.data);
    }
    //**** در غیر این صورت اگر سرور پاسخ نداد یا مشکل داشت ارور نشان بده */
    throw Exception("error");
  }
}
