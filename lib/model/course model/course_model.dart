class CourseModel {
  int? status;
  String? message;
  Data? data;

  CourseModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory CourseModel.fromJson(Map<String, dynamic> json) {
    return CourseModel(
      status: json['status'],
      message: json['message'],
      data: json['data'] != null ? Data.fromJson(json['data']) : null,
    );
  }
}

class Data {
  Userdata? userdata;
  List<Story>? stories;
  List<dynamic>? testimonial;
  List<Subject>? subjects;

  Data({
    required this.userdata,
    required this.stories,
    required this.testimonial,
    required this.subjects,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      userdata: json['userdata'] != null ? Userdata.fromJson(json['userdata']) : null,
      stories: json['stories'] != null ? (json['stories'] as List).map((e) => Story.fromJson(e)).toList() : null,
      testimonial: json['testimonial'],
      subjects: json['subjects'] != null ? (json['subjects'] as List).map((e) => Subject.fromJson(e)).toList() : null,
    );
  }
}

class Story {
  String? id;
  String? title;
  DateTime? date;
  String? url;

  Story({
    required this.id,
    required this.title,
    required this.date,
    required this.url,
  });

  factory Story.fromJson(Map<String, dynamic> json) {
    return Story(
      id: json['id'],
      title: json['title'],
      date: DateTime.parse(json['date']),
      url: json['url'],
    );
  }
}

class Subject {
  String? id;
  String? title;
  String? courseId;
  String? order;
  String? thumbnail;
  String? background;
  String? icon;
  String? free;
  dynamic instructorId;

  Subject({
    required this.id,
    required this.title,
    required this.courseId,
    required this.order,
    required this.thumbnail,
    required this.background,
    required this.icon,
    required this.free,
    required this.instructorId,
  });

  factory Subject.fromJson(Map<String, dynamic> json) {
    return Subject(
      id: json['id'],
      title: json['title'],
      courseId: json['courseId'],
      order: json['order'],
      thumbnail: json['thumbnail'],
      background: json['background'],
      icon: json['icon'],
      free: json['free'],
      instructorId: json['instructorId'],
    );
  }
}

class Userdata {
  String? id;
  String? userId;
  String? name;
  String? phone;
  String? deviceId;
  String? deviceIdMessage;
  String? courseId;
  bool? isPurchased;
  String? courseName;
  String? batchName;
  String? batchId;
  String? image;
  String? queryNumber;
  String? instContactPhone;
  String? instContactEmail;
  String? instContactAddress;
  String? privacyPolicy;
  String? dynamicLink;
  String? information;
  String? androidVersion;
  String? iosVersion;
  String? showSwitchCourse;
  int? showAddLiveClass;
  String? showExam;
  String? showPractice;
  String? showMaterial;
  int? showExternalExam;
  String? zoomId;
  String? zoomPassword;
  String? zoomApiKey;
  String? zoomSecretKey;
  String? zoomWebDomain;

  Userdata({
    required this.id,
    required this.userId,
    required this.name,
    required this.phone,
    required this.deviceId,
    required this.deviceIdMessage,
    required this.courseId,
    required this.isPurchased,
    required this.courseName,
    required this.batchName,
    required this.batchId,
    required this.image,
    required this.queryNumber,
    required this.instContactPhone,
    required this.instContactEmail,
    required this.instContactAddress,
    required this.privacyPolicy,
    required this.dynamicLink,
    required this.information,
    required this.androidVersion,
    required this.iosVersion,
    required this.showSwitchCourse,
    required this.showAddLiveClass,
    required this.showExam,
    required this.showPractice,
    required this.showMaterial,
    required this.showExternalExam,
    required this.zoomId,
    required this.zoomPassword,
    required this.zoomApiKey,
    required this.zoomSecretKey,
    required this.zoomWebDomain,
  });

  factory Userdata.fromJson(Map<String, dynamic> json) {
    return Userdata(
      id: json['id'],
      userId: json['userId'],
      name: json['name'],
      phone: json['phone'],
      deviceId: json['deviceId'],
      deviceIdMessage: json['deviceIdMessage'],
      courseId: json['courseId'],
      isPurchased: json['isPurchased'],
      courseName: json['courseName'],
      batchName: json['batchName'],
      batchId: json['batchId'],
      image: json['image'],
      queryNumber: json['queryNumber'],
      instContactPhone: json['instContactPhone'],
      instContactEmail: json['instContactEmail'],
      instContactAddress: json['instContactAddress'],
      privacyPolicy: json['privacyPolicy'],
      dynamicLink: json['dynamicLink'],
      information: json['information'],
      androidVersion: json['androidVersion'],
      iosVersion: json['iosVersion'],
      showSwitchCourse: json['showSwitchCourse'],
      showAddLiveClass: json['showAddLiveClass'],
      showExam: json['showExam'],
      showPractice: json['showPractice'],
      showMaterial: json['showMaterial'],
      showExternalExam: json['showExternalExam'],
      zoomId: json['zoomId'],
      zoomPassword: json['zoomPassword'],
      zoomApiKey: json['zoomApiKey'],
      zoomSecretKey: json['zoomSecretKey'],
      zoomWebDomain: json['zoomWebDomain'],
    );
  }
}
