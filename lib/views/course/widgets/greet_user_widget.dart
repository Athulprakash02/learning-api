import 'package:flutter/material.dart';
import 'package:trogon_media/model/course%20model/course_model.dart';

class GreetUserWidget extends StatelessWidget {
  const GreetUserWidget({
    super.key,
    required this.size,
    required this.details,
  });

  final Size size;
  final CourseModel? details;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: size.width / 2,
          child: Padding(
            padding: EdgeInsets.only(top: size.width * .1),
            child: Container(
              width: double.maxFinite,
              // height: size.wi,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Good Morning',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      details!.data!.userdata!.name!,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 239, 255, 251),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              'Digital Marketing Certification',
                              style: TextStyle(fontSize: 16),
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  'Change',
                                  style: TextStyle(fontSize: 16),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
            right: 10,
            top: 0,
            child: CircleAvatar(
              backgroundImage: NetworkImage(details!.data!.userdata!.image!),
              backgroundColor: Colors.red,
              radius: 40,
            )),
      ],
    );
  }
}
