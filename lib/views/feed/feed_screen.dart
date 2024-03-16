import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trogon_media/controller/services/feed%20services/feed_services.dart';
import 'package:trogon_media/model/feed%20model/feed_model.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    FeedService feedService = FeedService();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder<FeedModel>(
            future: feedService.fetchData(),
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
                FeedModel? feeds = snapshot.data;
                return ListView.builder(
                  itemCount: feeds?.data!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(
                                  255, 255, 254, 254), // Shadow color
                              spreadRadius: 0,
                              blurRadius: 0,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                              Container(
                                width: size.width,
                                height: size.width / 2,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          NetworkImage(feeds!.data![index].file!),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.favorite_border,color: Colors.red,),
                                  Text(feeds.data![index].likeCount!.toString(),style: const TextStyle(fontSize: 16),),
                                  const Spacer(),
                                  const Icon(Icons.bookmark_border_outlined)
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    feeds.data![index].category == null
                                        ? 'Exams'
                                        : feeds.data![index].category
                                            .toString()
                                            .substring(9),
                                    style: TextStyle(
                                        color: Colors.blue.shade500,
                                        fontSize: 16),
                                  ),
                                  const Spacer(),
                                  Text(
                                    DateFormat('dd-MM-yyyy')
                                        .format(feeds.data![index].updatedOn!),
                                    style: const TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                feeds.data![index].title!,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                feeds.data![index].content!,
                                style: const TextStyle(fontSize: 16, height: 2),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return const SizedBox();
              }
            }),
      ),
    );
  }
}
