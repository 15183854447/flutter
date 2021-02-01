
class A {
  Support support;

  A({this.support});

  A.fromJson(Map<String, dynamic> json) {
    if(json["support"] is Map)
      this.support = json["support"] == null ? null : Support.fromJson(json["support"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(this.support != null)
      data["support"] = this.support.toJson();
    return data;
  }
}

class Support {
  String url;
  String text;

  Support({this.url, this.text});

  Support.fromJson(Map<String, dynamic> json) {
    if(json["url"] is String)
      this.url = json["url"];
    if(json["text"] is String)
      this.text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["url"] = this.url;
    data["text"] = this.text;
    return data;
  }
}