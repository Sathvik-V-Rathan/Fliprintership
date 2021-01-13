class Regional {
  String loc;
  int number;

  Regional({this.loc, this.number});

  Regional.fromJson(Map<String, dynamic> json) {
    loc = json['loc'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['loc'] = this.loc;
    data['number'] = this.number;
    return data;
  }
}
