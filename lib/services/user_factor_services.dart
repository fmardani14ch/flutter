import "package:nobat_online/models/user_factor.dart";

import "package:nobat_online/utils/http_client.dart";
import 'package:flutter/material.dart';

//##############################################################################

// get()   / json_to_dart برای دریافت اطلاعات از سرور از متد گِت و تبدیل دارت به جیسان استفاده میشود
// post()  / post_to_json برای ارسال اطلاعات از سرور از متد پست و تبدیل جیسان به دارت استفاده میشود
// put()  / post_to_json برای ویرایش اطلاعات از سرور از متد پست و تبدیل جیسان به دارت استفاده میشود

//##############################################################################
//##############################################################################

class USER_FACTOR_SERVICE {
  //******************** ایجاد متغیری خالی برای بروز رسانی لحظه ای اطلاعات */
  static ValueNotifier<List<USER_FACTOR_MODEL>> user_factor_list =
      ValueNotifier([]);
  //******************************************** گرفتن اطلاعات تمام دیتا بیس */
  static Future<List<USER_FACTOR_MODEL>> get_user_factor_data() async {
    //************************json متغیری برای دریافت اطلاعات به صورت جیسان */
    var response = await httpClient.get("za5xF3/user_factor");
    // ایجاد شرط اگر دریافت اطلاعات صحیح بود یا از طرف سرور پاسخی ارسال شد*/
    if (response.statusCode == 200 || response.statusCode == 201) {
      //************** لیست مقادیر دریافتی پس از خوانده شدن مجدد خالی شود */
      user_factor_list.value = [];
      //***************** برای تمام یا تک تک مقادیر ارسال شده از سمت سرور */
      for (var element in response.data) {
        //********* تمام مقادیر لیست شده را به صورت جیسان در کلاس دخیره کن */
        user_factor_list.value.add(USER_FACTOR_MODEL.fromJson(element));
      }
      //************ بازگردانی یا خواندن مقادیر درون لیست مربوط به خط اول */

      return user_factor_list.value;
    }
    //**** در غیر این صورت اگر سرور پاسخ نداد یا مشکل داشت ارور نشان بده */
    throw Exception("error");
  }

//##############################################################################
//##############################################################################

  //***************************** گرفتن اطلاعات بر اساس کد ملی یا فیلتر خاص */
  static Future<List<USER_FACTOR_MODEL>> get_user_factor_by_personal_id(
      String personal_id) async {
    var response =
        await httpClient.get("za5xF3/user_factor?personal_id=$personal_id");
    if (response.statusCode == 200 || response.statusCode == 201) {
      user_factor_list.value = [];
      for (var element in response.data) {
        user_factor_list.value.add(USER_FACTOR_MODEL.fromJson(element));
      }
      return user_factor_list.value;
    }
    throw Exception("error");
  }

//##############################################################################
//##############################################################################

//************************* post() ثبت یا ارسال اطلاعات  در دیتابیس بامتد پست */
//***  مقادیری که قرار است در دیتابیس دخیره شود پس از فراخوانی نام کلاس و
//*** یک متغیر که بهتر است هم نام کلاس ولی با نام کوچکتر باشد ارسال میشود */
  static Future<USER_FACTOR_MODEL> add_user_factor(
      USER_FACTOR_MODEL user_factor_model) async {
    //سپس با یک متغیر، یک درخواست  که میخواهیم اطاعات رااز نوع متد پست و
    //***************************  تبدیل دارت به جیسان به سرور ارسال میکنم */
    var response = await httpClient.post("za5xF3/user_factor",
        data: user_factor_model.toJson());
    //*********** اگر شرط بر قرار بود و سرور به ما پاسخ صحیح یا قبولی داد */
    if (response.statusCode == 200 || response.statusCode == 201) {
      //******************************************* اطلاعات را ارسال می کنیم */
      await get_user_factor_data();
      return USER_FACTOR_MODEL.fromJson(response.data);
    }
    //**** در غیر این صورت اگر سرور پاسخ نداد یا مشکل داشت ارور نشان بده */
    throw Exception("error");
  }

//##############################################################################
//##############################################################################
  static Future<USER_FACTOR_MODEL> delete_user_factor(int id) async {
    // سپس با یک متغیر، یک درخواست  که میخواهیم اطاعات رااز نوع مِتد دِلیت و
    //*********** متغیر آیدی اطلاعاuserIDتی که برای حذف انتخاب کردیم ارسال میکنیم*/
    var response = await httpClient.delete(
      "za5xF3/user_factor/$id",
    );
    //*********** اگر شرط بر قرار بود و سرور به ما پاسخ صحیح یا قبولی داد */
    if (response.statusCode == 200 || response.statusCode == 201) {
      //******************************* اطلاعات حذفی را ارسال می کنیم */
      await get_user_factor_data();
      return USER_FACTOR_MODEL.fromJson(response.data);
    }
    //**** در غیر این صورت اگر سرور پاسخ نداد یا مشکل داشت ارور نشان بده */

    throw Exception("error");
  }

  //********** put() آپدیت یا ویرایش اطلاعات  در دیتابیس بامتد پست ***********/
//***   مقادیری که قرار است در دیتابیس ویرایش شود پس از فراخوانی نام کلاس و
//***  idیک متغیر که بهتر است هم نام کلاس ولی با نام کوچکتر باشد و یک متغیر
//************************************************************* ارسال میشود  /
  static Future<USER_FACTOR_MODEL> update_factor(
      {required USER_FACTOR_MODEL user_factor_model,
      required int user_factor_model_id}) async {
    // سپس با یک متغیر، یک درخواست  که میخواهیم اطاعات رااز نوع متد پوت و
    //******  تبدیل دارت به جیسان به سرور به همراه متغیر آیدی ارسال میکنم */
    var response = await httpClient.put("oxzuxe/data/$user_factor_model_id",
        data: user_factor_model.toJson());
    //*********** اگر شرط بر قرار بود و سرور به ما پاسخ صحیح یا قبولی داد */
    if (response.statusCode == 200 || response.statusCode == 201) {
      //******************************* اطلاعات ویرایش شده را ارسال می کنیم */
      await get_user_factor_data();
      return USER_FACTOR_MODEL.fromJson(response.data);
    }
    //**** در غیر این صورت اگر سرور پاسخ نداد یا مشکل داشت ارور نشان بده */
    throw Exception("error");
  }

//##############################################################################
//##############################################################################
}
