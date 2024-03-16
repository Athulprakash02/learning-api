import 'package:flutter/material.dart';
import 'package:trogon_media/controller/services/feed%20services/feed_services.dart';
import 'package:trogon_media/model/feed%20model/feed_model.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    FeedService feedService = FeedService();
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Feed',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      // ),
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
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 255, 254, 254)
                                  , // Shadow color
                              spreadRadius: 3,
                              blurRadius: 3,
                              offset: Offset(1, 3),
                            ),
                          ],
                        ),
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
                            Row(
                              children: [
                                const Icon(Icons.favorite_border),
                                Text(feeds.data![index].likeCount!.toString()),
                                const Spacer(),
                                const Icon(Icons.bookmark_border_outlined)
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              feeds.data![index].category == null
                                  ? 'Exams'
                                  : feeds.data![index].category
                                      .toString()
                                      .substring(9),
                              style: TextStyle(
                                  color: Colors.blue.shade500, fontSize: 16),
                            ),
                            Text(
                              feeds.data![index].title!,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              feeds.data![index].content!,
                              style: const TextStyle(fontSize: 16, height: 2),
                            )
                          ],
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
