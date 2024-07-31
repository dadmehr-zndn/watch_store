//TODO: uncomment
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/colors.dart';
import 'package:watch_store/resources/dimens.dart';
import 'package:watch_store/resources/resources.dart';
import 'package:watch_store/widgets/cat_item.dart';
import 'package:watch_store/widgets/categories.dart';
import 'package:watch_store/widgets/logo.dart';
import 'package:watch_store/widgets/product_item.dart';
import 'package:watch_store/widgets/search_bar.dart';
import 'package:watch_store/widgets/slider_indicator.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> items = [
    'https://5.imimg.com/data5/SELLER/Default/2022/5/HV/ZZ/LI/106321217/luxury-bedroom-interior-design-service.jpg',
    'https://mrwallpaper.com/images/hd/gaming-room-dramatic-design-us9d6pcp66ygyeii.jpg',
    'https://e0.pxfuel.com/wallpapers/1017/464/desktop-wallpaper-gaming-room-gamer-room.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRE7bhsQpuvlSRoZ3Qdc0okYf9Yfq6_QAheHnYps6w6wsOolArDMZJFYbXASvpE1QPwR4o&usqp=CAU',
  ];

  int currentIndex = 0;
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 36.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                WatchStoreSearchBar(),

                31.h.height,

                CarouselSlider(
                  carouselController: _carouselController,
                  items: items
                      .map((e) => ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(e, fit: BoxFit.cover),
                          ))
                      .toList(),
                  options: CarouselOptions(
                    height: Dimens.sliderHeight,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(seconds: 3),
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),

                11.h.height,

                // S L I D E R   I N D I C A T O R
                SizedBox(
                  height: 10.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return WatchStoreSliderIndicator(
                        onTap: () => _carouselController.jumpToPage(index),
                        isCurrent: currentIndex == index,
                      );
                    },
                  ),
                ),

                46.h.height,

                WatchStoreCategories(),

                36.h.height,

                SizedBox(
                  height: 289.h,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          shrinkWrap: true,
                          reverse: true,
                          physics: ClampingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                right: index == 0
                                    ? 0
                                    : Dimens.productEventsPadding,
                                left: index == 7
                                    ? Dimens.productEventsPadding
                                    : 0,
                              ),
                              child: WatchStoreProductItem(
                                name: AppStrings.fakeProductName,
                                price: 63500,
                                imagePath: Assets.png.watch.path,
                                discount: 20,
                                previousPrice: 122000,
                                countdown: '09:26:22',
                              ),
                            );
                          },
                        ),

                        // A M A Z I N G   P R O D U C T S
                        RotatedBox(
                          quarterTurns: -1,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 24.w),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RotatedBox(
                                        quarterTurns: 1,
                                        child:
                                            SvgPicture.asset(Assets.svg.back)),
                                    6.w.width,
                                    Text(
                                      AppStrings.seeAll,
                                      style: LightAppTextStyles.seeAll,
                                    ),
                                  ],
                                ),
                                27.w.height,
                                Text(
                                  AppStrings.amazing,
                                  style: LightAppTextStyles.amazingProducts,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
