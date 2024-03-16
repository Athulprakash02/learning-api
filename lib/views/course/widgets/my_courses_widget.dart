
import 'package:flutter/material.dart';
import 'package:trogon_media/model/course%20model/course_model.dart';

class MyCoursesWidget extends StatelessWidget {
  const MyCoursesWidget({
    super.key,
    required this.size,
    required this.details,
  });

  final Size size;
  final CourseModel? details;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: size.width,
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            // crossAxisAlignment: CrossAxisAlignment.star
            children: [
              CircleAvatar(
                radius: size.width * .08,
                backgroundImage: NetworkImage(
                  details!.data!.subjects![index].icon!,
                ),
              ),
            
              const SizedBox(
                height: 10,
              ),
              Text(
                details!.data!.subjects![index].title!,textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          );
        },
      ),
    );
  }
}