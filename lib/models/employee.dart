class Employee {
  final String id;
  final String name;
  final String avatar;
  final String emailId;
  final String mobile;
  final String country;
  final String state;
  final String district;

  Employee({
    required this.id,
    required this.name,
    required this.avatar,
    required this.emailId,
    required this.mobile,
    required this.country,
    required this.state,
    required this.district,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json['id'],                     // 'id' field from API
      name: json['name'],                 // 'name' field from API
      avatar: json['avatar'],             // 'avatar' field from API
      emailId: json['emailId'],           // 'emailId' field from API
      mobile: json['mobile'],             // 'mobile' field from API
      country: json['country'],           // 'country' field from API
      state: json['state'],               // 'state' field from API
      district: json['district'],         // 'district' field from API
    );
  }
}
