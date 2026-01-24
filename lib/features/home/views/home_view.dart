import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart' show Gap;
import '../../../core/constant/barrier_files.dart';
import '../../../core/widgets/custom_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.kBlack,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(AppConstant.kPadding),
            child: Column(
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Column(
                        spacing: AppConstant.kPadding / 2,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomText(
                            title: 'Hey, Sarthak',
                            fontSize: AppFontSize.fs16,
                          ),
                          Row(
                            spacing: AppConstant.kPadding / 2,
                            children: [
                              const CustomText(
                                title: 'Karangamal',
                                fontSize: AppFontSize.fs16,
                                fontColor: AppColor.kPrimary,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: AppColor.kPrimary,
                                size: 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Gap(AppConstant.kPadding),
                    Container(
                      padding: const EdgeInsets.all(AppConstant.kPadding / 2),
                      decoration: const BoxDecoration(
                        color: AppColor.kBlack2,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        CupertinoIcons.search,
                        color: Colors.white,
                      ),
                    ),
                    const Gap(AppConstant.kPadding / 2),
                    Container(
                      padding: const EdgeInsets.all(AppConstant.kPadding / 2),
                      decoration: const BoxDecoration(
                        color: AppColor.kBlack2,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        CupertinoIcons.profile_circled,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Gap(AppConstant.kPadding * 1.25),
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(AppImages.movieImage),
                    Positioned(
                      bottom: -40,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppConstant.kPadding / 1.6,
                        ),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            color: AppColor.kBlack2,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Row(
                            children: [
                            const  Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     CustomText(
                                      title: 'TRENDING',
                                      fontSize: AppFontSize.fs12,
                                      fontColor: Colors.white70,
                                    ),
                                     SizedBox(height: 4),
                                     CustomText(
                                      title: 'EVIL DEAD RISE',
                                      fontSize: AppFontSize.fs16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                     SizedBox(height: 4),
                                    Row(
                                      children: const [
                                        CustomText(
                                          title: 'A',
                                          fontSize: AppFontSize.fs14,
                                          fontColor: Colors.red,
                                        ),
                                        CustomText(
                                          title: ' . ENGLISH',
                                          fontSize: AppFontSize.fs14,
                                          fontColor: Colors.white,
                                        ),
                                      ],
                                    ),
                                     SizedBox(height: 2),
                                     CustomText(
                                      title: 'HORROR',
                                      fontSize: AppFontSize.fs14,
                                      fontColor: Colors.white70,
                                    ),
                                  ],
                                ),
                              ),
                      
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColor.kPrimary,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                    ),
                                    child: const CustomText(
                                      title: 'Book',
                                      fontSize: AppFontSize.fs14,
                                      fontColor: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  const CustomText(
                                    title: '2D.3D.4DX',
                                    fontSize: AppFontSize.fs12,
                                    fontColor: Colors.white70,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      
                      ),
                    ),
                  ],
                ),
                const Gap(60), // space for floating card

                _sectionHeader(title: 'Now Showing'),

                const Gap(AppConstant.kPadding),

                SizedBox(
                  height: 220,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    separatorBuilder: (_, __) => const Gap(12),
                    itemBuilder: (context, index) {
                      return const MovieCell();
                    },
                  ),
                ),

                const Gap(AppConstant.kPadding * 1.5),

                _sectionHeader(title: 'Coming Soon'),

                const Gap(AppConstant.kPadding),

                SizedBox(
                  height: 220,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    separatorBuilder: (_, __) => const Gap(12),
                    itemBuilder: (context, index) {
                      return const MovieCell();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _sectionHeader({required String title}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          title: title,
          fontSize: AppFontSize.fs16,
          fontWeight: FontWeight.bold,
        ),
        const Icon(
          Icons.arrow_forward_ios,
          size: 14,
          color: Colors.white70,
        ),
      ],
    );
  }
}

class MovieCell extends StatelessWidget {
  const MovieCell({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  AppImages.movieImage,
                  height: 170,
                  width: 140,
                  fit: BoxFit.cover,
                ),
              ),

              // Rating badge
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 12,
                      ),
                      SizedBox(width: 4),
                      CustomText(
                        title: '4.8',
                        fontSize: AppFontSize.fs12,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const Gap(8),

          // Movie name
          const CustomText(
            title: 'Evil Dead Rise',
            fontSize: AppFontSize.fs14,
            maxLines: 1,
          ),

          const Gap(2),

          // Genre
          const CustomText(
            title: 'Horror • English',
            fontSize: AppFontSize.fs12,
            fontColor: Colors.white70,
          ),
        ],
      ),
    );
  }
}
