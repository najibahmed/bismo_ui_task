import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyality_card_wallet/app/card_model.dart';
import 'package:loyality_card_wallet/app/helper/data.dart';
import 'package:loyality_card_wallet/app/modules/dashboard/dashboard_controller.dart';
import 'package:loyality_card_wallet/app/route/route_helper.dart';
import 'package:loyality_card_wallet/app/utils/app_images.dart';
import 'package:loyality_card_wallet/app/utils/dimension.dart';
import 'package:loyality_card_wallet/app/widgets/giftCardItem.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/item_search_Delegate.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(slivers: [
          SliverPadding(
            padding: EdgeInsets.all(Dimension.height10),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  homeHeader(),
                  appBanner(),
                ],
              ),
            ),
          ),
          buildCardItemList(),
        ]),
      ),
    );
  }

  SliverPadding buildCardItemList() {
    return SliverPadding(
          padding: EdgeInsets.symmetric(horizontal:Dimension.height10),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                CardModel cardModel=couponListData[index];
                 return Giftcarditem(cardModel: cardModel,index: index);},
              childCount: couponListData.length,
            )
          ),
        );
  }

  Column appBanner() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CarouselSlider(
            items: sliderCardImages.map((image) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover)),
              );
            }).toList(),
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                Get.find<DashboardController>().changeIndex(index);
              },
              height: Dimension.height10 * 23,
              autoPlay: true,
              // enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              autoPlayInterval: const Duration(seconds: 6),
              autoPlayAnimationDuration: const Duration(milliseconds: 300),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              viewportFraction: 1.0,
            ),
          ),
        ),
        SizedBox(
          height: Dimension.height10,
        ),
        GetBuilder<DashboardController>(builder: (controller) {
          return AnimatedSmoothIndicator(
              effect: ScrollingDotsEffect(
                  dotHeight: Dimension.height10 + 2,
                  dotWidth: Dimension.height10 + 2),
              activeIndex: controller.currentIndex,
              count: sliderCardImages.length);
        })
      ],
    );
  }

  Widget homeHeader() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(Dimension.height10),
          height: Dimension.height10 * 5,
          width: Dimension.height10 * 5,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.instance.profileImg),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(100)),
        ),
        Spacer(),
        IconButton(
            onPressed: () {
              Get.toNamed(RouteHelper.searchView);
              // showSearch(
              //     context: Get.context!,
              //     delegate: ItemSearchDelegate(),
              // );
            },
            icon: Icon(
              Icons.search,
              color: Colors.black54,
              size: Dimension.height10 * 3,
            )),
        Badge(
          backgroundColor: Colors.redAccent,
          isLabelVisible: true,
          smallSize: Dimension.height10 - 2,
          alignment: Alignment(0.2, -0.5),
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.black54,
                size: Dimension.height10 * 3,
              )),
        ),
      ],
    );
  }
}
