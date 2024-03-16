import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:trogon_media/controller/services/home%20services/home_service.dart';
import 'package:trogon_media/model/home%20model/home_model.dart';
import 'package:trogon_media/views/home/widgets/ad_banner.dart';
import 'package:trogon_media/views/home/widgets/our_programmes_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    HomeService homeService = HomeService();
    // homeService.fetchData();
    return FutureBuilder<HomeModel>(
        future: homeService.fetchData(),
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
            HomeModel? details = snapshot.data;
            return Scaffold(
              
              body: Padding(
                padding: EdgeInsets.all(size.width / 16),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CarouselSlider(
                        items: [
                          AdBannerWidget(
                              imageUrl: details!.data!.adBanner![0].image!),
                          AdBannerWidget(
                              imageUrl: details.data!.adBanner![1].image!),
                          AdBannerWidget(
                              imageUrl: details.data!.adBanner![2].image!),
                          AdBannerWidget(
                              imageUrl: details.data!.adBanner![3].image!),
                        ],
                        options: CarouselOptions(
                          
                          height: size.width * .45,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          // aspectRatio: 4 / 3,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          viewportFraction: 1,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Our Programmes',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      OurProgrammesWidget(details: details,size: size,),

                      
                      Image(image: NetworkImage(details.data!.currentAffairsImageUrl!))
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

