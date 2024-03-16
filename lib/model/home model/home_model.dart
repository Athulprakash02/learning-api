class HomeModel {
  int? status;
  String? message;
  Data? data;

  HomeModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      status: json['status'],
      message: json['message'],
      data: json['data'] != null ? Data.fromJson(json['data']) : null,
    );
  }
}

class Data {
  Userdata? userdata;
  List<dynamic>? testimonial;
  List<AdBanner>? adBanner;
  List<Course>? topCourses;
  List<Course>? trendingCourses;
  List<dynamic>? demoVideos;
  List<dynamic>? demoQuizzes;
  String? currentAffairsImageUrl;
  String? showScholarshipRegistration;
  String? imageScholarshipRegistration;
  String? urlScholarshipRegistration;
  String? showScholarshipExam;
  String? imageScholarshipExam;
  String? urlScholarshipExam;

  Data({
    required this.userdata,
    required this.testimonial,
    required this.adBanner,
    required this.topCourses,
    required this.trendingCourses,
    required this.demoVideos,
    required this.demoQuizzes,
    required this.currentAffairsImageUrl,
    required this.showScholarshipRegistration,
    required this.imageScholarshipRegistration,
    required this.urlScholarshipRegistration,
    required this.showScholarshipExam,
    required this.imageScholarshipExam,
    required this.urlScholarshipExam,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      userdata:
          json['userdata'] != null ? Userdata.fromJson(json['userdata']) : null,
      testimonial: json['testimonial'],
      adBanner: json['ad_banner'] != null
          ? (json['ad_banner'] as List)
              .map((item) => AdBanner.fromJson(item))
              .toList()
          : null,
      topCourses: json['top_courses'] != null
          ? (json['top_courses'] as List)
              .map((item) => Course.fromJson(item))
              .toList()
          : null,
      trendingCourses: json['trending_courses'] != null
          ? (json['trending_courses'] as List)
              .map((item) => Course.fromJson(item))
              .toList()
          : null,
      demoVideos: json['demo_videos'],
      demoQuizzes: json['demo_quizzes'],
      currentAffairsImageUrl: json['current_affairs_image_url'],
      showScholarshipRegistration: json['show_scholarship_registration'],
      imageScholarshipRegistration: json['image_scholarship_registration'],
      urlScholarshipRegistration: json['url_scholarship_registration'],
      showScholarshipExam: json['show_scholarship_exam'],
      imageScholarshipExam: json['image_scholarship_exam'],
      urlScholarshipExam: json['url_scholarship_exam'],
    );
  }
}

class AdBanner {
  String? id;
  String? image;
  String? link;

  AdBanner({
    required this.id,
    required this.image,
    required this.link,
  });

  factory AdBanner.fromJson(Map<String, dynamic> json) {
    return AdBanner(
      id: json['id'],
      image: json['image'],
      link: json['link'],
    );
  }
}

class Course {
  String? id;
  String? title;
  String? description;
  String? shortDescription;
  String? thumbnail;
  String? price;
  dynamic isFreeCourse;
  int? rating;
  int? numberOfRatings;
  String? totalEnrollment;
  String? duration;
  int? totalLessons;
  String? shareableLink;

  Course({
    required this.id,
    required this.title,
    required this.description,
    required this.shortDescription,
    required this.thumbnail,
    required this.price,
    required this.isFreeCourse,
    required this.rating,
    required this.numberOfRatings,
    required this.totalEnrollment,
    required this.duration,
    required this.totalLessons,
    required this.shareableLink,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      shortDescription: json['short_description'],
      thumbnail: json['thumbnail'],
      price: json['price'],
      isFreeCourse: json['is_free_course'],
      rating: json['rating'],
      numberOfRatings: json['number_of_ratings'],
      totalEnrollment: json['total_enrollment'],
      duration: json['duration'],
      totalLessons: json['total_lessons'],
      shareableLink: json['shareable_link'],
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
    userId: json['user_id'],
    name: json['name'],
    phone: json['phone'],
    deviceId: json['device_id'],
    deviceIdMessage: json['device_id_message'],
    courseId: json['course_id'],
    isPurchased: json['is_purchased'],
    courseName: json['course_name'],
    batchName: json['batch_name'],
    batchId: json['batch_id'],
    image: json['image'],
    queryNumber: json['query_number'],
    instContactPhone: json['inst_contact_phone'],
    instContactEmail: json['inst_contact_email'],
    instContactAddress: json['inst_contact_address'],
    privacyPolicy: json['privacy_policy'],
    dynamicLink: json['dynamic_link'],
    information: json['information'],
    androidVersion: json['android_version'],
    iosVersion: json['ios_version'],
    showSwitchCourse: json['show_switch_course'],
    showAddLiveClass: json['show_add_live_class'],
    showExam: json['show_exam'],
    showPractice: json['show_practice'],
    showMaterial: json['show_material'],
    showExternalExam: json['show_external_exam'],
    zoomId: json['zoom_id'],
    zoomPassword: json['zoom_password'],
    zoomApiKey: json['zoom_api_key'],
    zoomSecretKey: json['zoom_secret_key'],
    zoomWebDomain: json['zoom_web_domain'],
  );
}

}
