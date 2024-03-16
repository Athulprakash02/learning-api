
// ignore_for_file: constant_identifier_names

class FeedModel {
  int? status;
  String? message;
  List<Datum>? data;

  FeedModel({
    this.status,
    this.message,
    this.data,
  });

  factory FeedModel.fromJson(Map<String, dynamic> json) {
    return FeedModel(
      status: json['status'],
      message: json['message'],
      data: json['data'] != null
          ? List<Datum>.from(json['data'].map((x) => Datum.fromJson(x)))
          : null,
    );
  }
}

class Datum {
  String? feedId;
  String? title;
  String? content;
  String? image;
  String? categoryId;
  dynamic courseId;
  FileType? fileType;
  String? videoUrl;
  String? thumbnail;
  DateTime? updatedOn;
  Category? category;
  String? file;
  String? videoThumbnail;
  int? isBookmarked;
  int? isLiked;
  String? date;
  int? likeCount;

  Datum({
    this.feedId,
    this.title,
    this.content,
    this.image,
    this.categoryId,
    this.courseId,
    this.fileType,
    this.videoUrl,
    this.thumbnail,
    this.updatedOn,
    this.category,
    this.file,
    this.videoThumbnail,
    this.isBookmarked,
    this.isLiked,
    this.date,
    this.likeCount,
  });

  factory Datum.fromJson(Map<String, dynamic> json) {
    return Datum(
      feedId: json['feed_id'],
      title: json['title'],
      content: json['content'],
      image: json['image'],
      categoryId: json['category_id'],
      courseId: json['course_id'],
      fileType: json['file_type'] != null ? fileTypeValues.map[json['file_type']] : null,
      videoUrl: json['video_url'],
      thumbnail: json['thumbnail'],
      updatedOn: json['updated_on'] != null ? DateTime.parse(json['updated_on']) : null,
      category: json['category'] != null ? categoryValues.map[json['category']] : null,
      file: json['file'],
      videoThumbnail: json['video_thumbnail'],
      isBookmarked: json['is_bookmarked'],
      isLiked: json['is_liked'],
      date: json['date'],
      likeCount: json['like_count'],
    );
  }
}

enum Category { EXAMS, NEET_EXAM_2023 }

final categoryValues = EnumValues({
  'NEET EXAM 2023': Category.NEET_EXAM_2023,
});

enum FileType { IMAGE }

final fileTypeValues = EnumValues({
  'image': FileType.IMAGE,
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
