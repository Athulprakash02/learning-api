import 'package:flutter/material.dart';
import 'package:trogon_media/controller/services/course%20services/course_service.dart';
import 'package:trogon_media/model/course%20model/course_model.dart';
import 'package:trogon_media/views/course/widgets/greet_user_widget.dart';
import 'package:trogon_media/views/course/widgets/icon_name_widget.dart';
import 'package:trogon_media/views/course/widgets/my_courses_widget.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    CourseService courseService = CourseService();
    return FutureBuilder<CourseModel>(
        future: courseService.fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error ${snapshot.error}'),
            );
          } else if (snapshot.hasData && snapshot.data != null) {
            CourseModel? details = snapshot.data;

            return Scaffold(
              appBar: AppBar(
        // backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 30,
              color: Colors.black,
            )),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
              color: Colors.blue,
              size: 30,
            ),
          )
        ],
      ),
              body: Padding(
                padding: EdgeInsets.all(size.width / 16),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GreetUserWidget(size: size, details: details),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 100,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 219, 237, 248)),
                        child:  const Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconNameWidget(
                                  icon: Icons.video_call_outlined,
                                  text: 'Live Class',
                                  color: Colors.blue),
                              IconNameWidget(
                                  icon: Icons.lightbulb_circle_outlined,
                                  text: 'Practice',
                                  color: Colors.green),
                              IconNameWidget(
                                  icon: Icons.padding,
                                  text: 'Exam',
                                  color: Colors.orange),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      MyCoursesWidget(size: size, details: details)
                    ],
                  ),
                ),
              ),
            );
          } else {
            return const SizedBox();
          }
        });
  }
}



