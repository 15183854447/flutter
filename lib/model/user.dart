
class User {
  Data data;
  Support support;

  User({this.data, this.support});

  User.fromJson(Map<String, dynamic> json) {
    this.data = json["data"] == null ? null : Data.fromJson(json["data"]);
    this.support = json["support"] == null ? null : Support.fromJson(json["support"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(this.data != null)
      data["data"] = this.data.toJson();
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
    this.url = json["url"];
    this.text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["url"] = this.url;
    data["text"] = this.text;
    return data;
  }
}

class Data {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  Data({this.id, this.email, this.firstName, this.lastName, this.avatar});

  Data.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.email = json["email"];
    this.firstName = json["first_name"];
    this.lastName = json["last_name"];
    this.avatar = json["avatar"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["email"] = this.email;
    data["first_name"] = this.firstName;
    data["last_name"] = this.lastName;
    data["avatar"] = this.avatar;
    return data;
  }
}