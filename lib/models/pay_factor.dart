class PAY_FACTOR_MODEL {
  int? id;

  String? fullname;

  String? doctor_name;

  String? father_name;

  String? personal_id;

  String? takhasos;

  String? date_time;

  String? time;

  String? price;

  String? phone;

  //********************************************** */
  PAY_FACTOR_MODEL({
    required this.id,
    required this.fullname,
    required this.doctor_name,
    required this.father_name,
    required this.personal_id,
    required this.takhasos,
    required this.date_time,
    required this.time,
    required this.phone,
    required this.price,
  });
  //************************** json to dart =  تبدیل اطلاعات از جیسان به دارت برای اجرا در برنامه */
  PAY_FACTOR_MODEL.fromJson(Map<String, dynamic> json) {
    fullname = json["fullname"];
    id = json["id"];
    doctor_name = json["doctor_name"];
    father_name = json["father_name"];
    personal_id = json["personal_id"];
    takhasos = json["takhasos"];
    time = json["time"];
    phone = json["phone"];
    price = json["price"];
    date_time = json["date_time"];
  }
  //****************************** json to dart = تبدیل اطلاعات دارت به جیسان برای ارسال به دیتابیس */
  Map<String, dynamic> toJson() {
    return {
      "date_time": date_time,
      "fullname": fullname,
      "id": id,
      "doctor_name": doctor_name,
      "father_name": father_name,
      "personal_id": personal_id,
      "takhasos": takhasos,
      "time": time,
      "phone": phone,
      "price": price,
    };
  }
}
