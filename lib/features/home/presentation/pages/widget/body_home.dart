import 'package:flutter/material.dart';
import 'package:task/core/extensions/extention_navigator.dart';
import 'package:task/core/get_it/get_it.dart';
import 'package:task/core/helpers/cache_helper.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/core/style/text_string.dart';
import 'package:task/features/home/data/models/shortcuts_model.dart';
import 'package:task/features/home/domain/entities/home_entity.dart';
import 'package:task/features/home/presentation/pages/widget/card_profile.dart';
import 'package:task/features/home/presentation/pages/widget/popular_card.dart';
import 'package:task/features/home/presentation/pages/widget/posters_card.dart';
import 'package:task/features/home/presentation/pages/widget/promo_code.dart';
import 'package:task/features/home/presentation/pages/widget/service_card.dart';
import 'package:task/features/home/presentation/pages/widget/shortcut_card.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({super.key, required this.home});
  final HomeEntity home;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        GestureDetector(
          onTap: () => getIt<CacheHelper>().clearAll(),
          child: CardProfile(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppTexts.services, style: context.textStyle.bodyLarge),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(home.services.length, (i) {
                  return ServiceCard(
                    badge: home.services[i].time,
                    image: home.services[i].image,
                    label: home.services[i].name,
                  );
                }),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),

        // Promo code
        PromoCode(),
        const SizedBox(height: 16),

        // Shortcuts
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppTexts.shortcuts, style: context.textStyle.bodyLarge),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(imagesShotcuts.length, (i) {
                  return ShortcutCard(
                    image: imagesShotcuts[i].image,
                    label: imagesShotcuts[i].title,
                  );
                }),
              ),
            ],
          ),
        ),

        PostersCard(posters: home.posters),

        // Popular restaurants
        verticalSpace(10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            AppTexts.popularRestaurants,
            style: context.textStyle.bodyLarge!.copyWith(fontSize: 16),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: height(context) / 5,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: home.restaurants.length,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, i) {
              return Padding(
                padding: EdgeInsets.only(
                  right: i == home.restaurants.length - 1 ? 0 : 12,
                ),
                child: PopularCard(
                  imageUrl: home.restaurants[i].image,
                  name: home.restaurants[i].name,
                  time: home.restaurants[i].time,
                ),
              );
            },
          ),
        ),

        const SizedBox(height: 24),
      ],
    );
  }
}
