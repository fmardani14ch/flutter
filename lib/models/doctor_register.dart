class DOCTOR_REGISTER_MODEL {
  int? id;
  String? doctor_name;

  String? date_time;

  String? takhasos;

  String? length;

  String? time;

  String? cod;

  String? price;

  //*************************************** */
  DOCTOR_REGISTER_MODEL({
    required this.id,
    required this.date_time,
    required this.takhasos,
    required this.doctor_name,
    required this.length,
    required this.time,
    required this.cod,
    required this.price,
  });
  //************************** json to dart =  تبدیل اطلاعات از جیسان به دارت برای اجرا در برنامه */
  DOCTOR_REGISTER_MODEL.fromJson(Map<String, dynamic> json) {
    date_time = json["date_time"];
    takhasos = json["takhasos"];
    doctor_name = json["doctor_name"];
    length = json["length"];
    time = json["time"];
    cod = json["cod"];
    id = json["id"];
    price = json["price"];
  }
  //****************************** json to dart = تبدیل اطلاعات دارت به جیسان برای ارسال به دیتابیس */
  Map<String, dynamic> toJson() {
    return {
      "date_time": date_time,
      "takhasos": takhasos,
      "doctor_name": doctor_name,
      "length": length,
      "cod": cod,
      "id": id,
      "time": time,
      "price": price,
    };
  }
}
