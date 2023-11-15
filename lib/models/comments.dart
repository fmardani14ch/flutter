class COMMENTS_MODEL {
  int? id;
  String? name;

  String? comment_text;

  //********************************************** */
  COMMENTS_MODEL({
    required this.id,
    required this.name,
    required this.comment_text,
  });
  //************************** json to dart =  تبدیل اطلاعات از جیسان به دارت برای اجرا در برنامه */
  COMMENTS_MODEL.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    comment_text = json["comment_text"];
  }
  //****************************** json to dart = تبدیل اطلاعات دارت به جیسان برای ارسال به دیتابیس */
  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "comment_text": comment_text,
      "id": id,
    };
  }
}
