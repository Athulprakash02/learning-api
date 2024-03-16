
import 'package:flutter/material.dart';
import 'package:trogon_media/model/home%20model/home_model.dart';

class OurProgrammesWidget extends StatelessWidget {
  const OurProgrammesWidget({
    super.key,
    required this.details, required this.size,
  });

  final HomeModel? details;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: size.width*.85,
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 5.0,
        ),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.width*.3,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius:
                        const BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: NetworkImage(details!.data!
                            .topCourses![index].thumbnail!),fit: BoxFit.cover)),
                // child: Image(
                //     image: NetworkImage(details!.data!
                //         .topCourses![index].thumbnail!)),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                details!.data!.topCourses![index].title!,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )
            ],
          );
        },
      ),
    );
  }
}