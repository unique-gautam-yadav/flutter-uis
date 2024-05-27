// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:reel_ui/card_detail.dart';
import 'package:reel_ui/common/app_colors.dart';
import 'package:reel_ui/common/image_assets.dart';
import 'package:reel_ui/common/scale_button.dart';
import 'package:reel_ui/common/zoom_anim.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<CardModel> cards = [
  CardModel(
      image: ImageAssets.rocket,
      title: 'Success',
      value: '56%',
      color: AppColors.purple),
  CardModel(
      image: ImageAssets.building,
      title: 'Clients',
      value: '286',
      color: AppColors.orange),
  CardModel(
      image: ImageAssets.vr,
      title: 'Virtual',
      value: '12.3%',
      color: AppColors.yellow),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.paddingOf(context).top + 20,
            ),
            FadeInAnimation(
              delay: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey.withOpacity(.3),
                          width: 2,
                        ),
                      ),
                      child: const Icon(
                        Iconsax.menu,
                        size: 30,
                      ),
                    ),
                    const Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        ImageAssets.jadeRastoldo,
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            const FadeInAnimation(
              delay: 1.5,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Morning",
                      style: TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.w900,
                        height: 1.1,
                      ),
                    ),
                    Text(
                      "Jade Restoldo",
                      style: TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.w100,
                        height: 1.1,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Remains private and protected",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 24),
                  ],
                ),
              ),
            ),
            FadeInAnimation(
              delay: 2,
              child: SizedBox(
                height: 240,
                child: ListView.separated(
                  itemCount: cards.length,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 16),
                  itemBuilder: (context, index) {
                    return ScaleButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (_) => CardDetailScreen(
                              model: cards[index],
                            ),
                          ),
                        );
                      },
                      child: CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: null,
                        child: Container(
                          width: 150,
                          decoration: BoxDecoration(
                            color: cards[index].color,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: cards[index].color.withOpacity(.5),
                                blurRadius: 10,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 10,
                                  left: 10,
                                  child: Hero(
                                    tag: Key(cards[index].image),
                                    child: Image.asset(
                                      cards[index].image,
                                      height: 80,
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                  top: 20,
                                  left: 20,
                                  right: 20,
                                  bottom: 20,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            cards[index].title,
                                            style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(.8),
                                              fontWeight: FontWeight.w900,
                                              fontSize: 14,
                                            ),
                                          ),
                                          const Icon(Iconsax.more_25,
                                              color: Colors.white),
                                        ],
                                      ),
                                      Text(
                                        cards[index].value,
                                        style: const TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            FadeInAnimation(
              delay: 2.5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Appointment",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const Spacer(),
                        CupertinoButton(
                          child: const Text("View all"),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.grey.withOpacity(.2),
                          width: 2,
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                height: 56,
                                width: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.withOpacity(.2),
                                    width: 2,
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        gradient: RadialGradient(
                                          colors: [
                                            AppColors.blue.withOpacity(.5),
                                            Colors.white,
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        ImageAssets.note,
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Faimily Therapy",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Tomorrow",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black.withOpacity(.2),
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Icon(
                                Iconsax.save_minus,
                                color: Colors.black.withOpacity(.2),
                                size: 32,
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          SizedBox(
                            height: 32,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: AppColors.litePink,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    "5:30pm to 8:00pm",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(.2),
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: AppColors.litePink,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    "\$100/dollar",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(.2),
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardModel {
  String image;
  String title;
  String value;
  Color color;
  CardModel({
    required this.image,
    required this.title,
    required this.value,
    required this.color,
  });
}
