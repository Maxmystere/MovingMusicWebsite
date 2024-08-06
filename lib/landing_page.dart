import 'package:flutter/material.dart';
import 'package:moving_music_car/utils/AppAssets.dart';
import 'package:moving_music_car/utils/AppStrings.dart';
import 'package:moving_music_car/widgets/socialMediaIconButton.dart';

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
                const SizedBox(
                  height: 16,
                ),
                /// TODO: Make cliquable text and open email app
                const Text('Email: movingmusicar@gmail.com',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                /// TODO: Make cliquable text and open phone app
                const Text('tel: +33611375721',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
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
      color: Colors.blueGrey,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: _horizontalPadding),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Présentation'),
          Text(AppStrings.presentationText),
          SizedBox(height: 32,),
          Text("Caractéristiques Techniques"),
          Text(AppStrings.technicalDetailsText),
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
        child: const Column(
          children: [
            SocialMediaIconButton(icon: Icons.facebook, url: 'facebook',),
            SizedBox(height: 8,),
            SocialMediaIconButton(icon: Icons.leak_add_sharp, url: 'instagram'),
          ],
        ),
      ),
    );
  }
}
