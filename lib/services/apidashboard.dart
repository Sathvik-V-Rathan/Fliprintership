class MedicalColleges {
  String state;
  String name;
  String city;
  String ownership;
  int admissionCapacity;
  int hospitalBeds;

  MedicalColleges(
      {this.state,
      this.name,
      this.city,
      this.ownership,
      this.admissionCapacity,
      this.hospitalBeds});

  MedicalColleges.fromJson(Map<String, dynamic> json) {
    state = json['state'];
    name = json['name'];
    city = json['city'];
    ownership = json['ownership'];
    admissionCapacity = json['admissionCapacity'];
    hospitalBeds = json['hospitalBeds'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state'] = this.state;
    data['name'] = this.name;
    data['city'] = this.city;
    data['ownership'] = this.ownership;
    data['admissionCapacity'] = this.admissionCapacity;
    data['hospitalBeds'] = this.hospitalBeds;
    return data;
  }
}
