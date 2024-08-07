import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:moving_music_car/utils/AppAssets.dart';
import 'package:moving_music_car/utils/AppColors.dart';
import 'package:moving_music_car/utils/AppStrings.dart';
import 'package:moving_music_car/widgets/socialMediaIconButton.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  static const double _horizontalPadding = 128;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  headerSection(),
                  presentationSection(),
                  const SizedBox(height: 16,),
                  ...instagramSection(),
                  const SizedBox(height: 16,),
                  ...youtubeSection(),
                  const SizedBox(height: 16,),
                ],
              ),
            ),
          ),
          socialMediaSection(),
        ],
      ),
    );
  }

  Widget headerSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: _horizontalPadding),
      child: SizedBox(
        height: 350,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Image.asset(AppAssets.logo)),
                const Text(
                  'La musique où vous voulez quand vous voulez',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(16),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Email: ',
                        style: TextStyle(fontWeight: FontWeight.bold,),
                      ),
                      TextSpan(
                        text: 'movingmusicar@gmail.com',
                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                          /// TODO: Implement email sending
                            launchUrl(Uri.parse('mailto:movingmusicar@gmail.com'));
                          },
                      ),
                    ],
                  ),
                ),
                const Gap(8),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'tel: ',
                        style: TextStyle(fontWeight: FontWeight.bold,),
                      ),
                      TextSpan(
                        text: '+33611375721',
                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            /// TODO: Implement calling
                            launchUrl(Uri.parse('tel:+33611375721'));
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            Image.asset(AppAssets.musicar),
          ],
        ),
      ),
    );
  }

  Widget presentationSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: _horizontalPadding),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(AppAssets.musicar),
          fit: BoxFit.cover,
          opacity: 0.1,
          colorFilter: ColorFilter.mode(
            AppColors.presentationBackground,
            BlendMode.srcOver,
          ),
        ),
        color: Colors.black.withOpacity(0.7),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Présentation',
            style: TextStyle(color: AppColors.presentationTitle, fontSize: 42, fontWeight: FontWeight.w500),
          ),
          Gap(8),
          Text(AppStrings.presentationText,
            style: TextStyle(color: AppColors.presentationText),
          ),
          Gap(32),
          Text("Caractéristiques Techniques",
            style: TextStyle(color: AppColors.presentationTitle, fontSize: 42, fontWeight: FontWeight.w500),
          ),
          Gap(8),
          Text(AppStrings.technicalDetailsText,
            style: TextStyle(color: AppColors.presentationText),
          ),
        ],
      ),
    );
  }

  List<Widget> instagramSection() {
    return [
      const Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: _horizontalPadding),
          child: Text('Galerie images'),
        ),
      ),
      SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: _horizontalPadding),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return const Card(
              child: Center(child: Text('Dummy Card Text')),
            );
          },
        ),
      ),),
    ];
  }

  List<Widget> youtubeSection() {
    return [
      const Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: _horizontalPadding),
          child: Text('Galerie Videos'),
        ),
      ),
      SizedBox(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: _horizontalPadding),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return const Card(
                child: Center(child: Text('Dummy Card Text')),
              );
            },
          ),
        ),),
    ];
  }

  Widget socialMediaSection() {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: const EdgeInsets.only(left: 24, top: 24,),
        child: Column(
          children: [
            SocialMediaIconButton(
              icon: SvgPicture.asset(AppAssets.facebookLogoSvg),
              url: Uri.parse('https://www.facebook.com/movingmusicar'),
            ),
            const Gap(8),
            SocialMediaIconButton(icon: Image.asset(AppAssets.instagramLogo), url: Uri.parse('https://www.instagram.com/movingmusicar/')),
          ],
        ),
      ),
    );
  }
}
