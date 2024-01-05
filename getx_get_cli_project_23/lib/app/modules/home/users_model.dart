class Users {
  String? id;
  String? name;
  String? email;
  String? job;

  Users({this.id,this.name, this.email, this.job});

  Users.fromJson(Map<String, dynamic> json) {
    id= json['id'];
    name = json['name'];
    email = json['email'];
    job = json['job'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['job'] = job;
    return data;
  }
}
