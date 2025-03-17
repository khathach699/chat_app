class UserModel {
  String? id;
  String? name;
  String? email;
  String? profileImage;
  String? phoneNumber;
  String? about;
  String? createAt;
  String? lastOnlineStatus;
  String? status;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.profileImage,
    this.phoneNumber,
    this.about,
    this.createAt,
    this.lastOnlineStatus,
    this.status,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    email = json["email"];
    profileImage = json["profileImage"];
    phoneNumber = json["phoneNumber"];
    about = json["About"];
    createAt = json["CreateAt"];
    lastOnlineStatus = json["LastOnlineStatus"];
    status = json["Status"];
  }

  static List<UserModel> fromList(List<Map<String, dynamic>> list) {
    return list.map(UserModel.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["email"] = email;
    _data["profileImage"] = profileImage;
    _data["phoneNumber"] = phoneNumber;
    _data["About"] = about;
    _data["CreateAt"] = createAt;
    _data["LastOnlineStatus"] = lastOnlineStatus;
    _data["Status"] = status;
    return _data;
  }
}
