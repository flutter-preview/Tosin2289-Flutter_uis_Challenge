import 'dart:ui' as ui;

import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';

class day118 extends StatelessWidget {
  const day118({
    Key? key,
  }) : super(key: key);

  Widget _buildContent(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildAvatar(),
          _buildInfo(),
          _buildVideoScroller(),
          _buildbuton(context),
        ],
      ),
    );
  }

  Widget _buildbuton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          child: const Text(
            'Back',
            style: TextStyle(color: Colors.white70),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }

  Widget _buildAvatar() {
    return Container(
      width: 110.0,
      height: 110.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white30),
      ),
      margin: const EdgeInsets.only(top: 32.0, left: 16.0),
      padding: const EdgeInsets.all(3.0),
      child: ClipOval(
        child: Image.asset(sid.avatar),
      ),
    );
  }

  Widget _buildInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            sid.firstName + sid.lastName,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          const Text('\n'),
          Text(
            sid.location,
            style: TextStyle(
              color: Colors.white.withOpacity(0.85),
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            color: Colors.white.withOpacity(0.85),
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            width: 225.0,
            height: 1.0,
          ),
          Text(
            sid.biography,
            style: TextStyle(
              color: Colors.white.withOpacity(0.85),
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVideoScroller() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: SizedBox.fromSize(
        size: const Size.fromHeight(245.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          itemCount: sid.videos.length,
          itemBuilder: (BuildContext context, int index) {
            var video = sid.videos[index];

            return VideoCard(video);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 50.0,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          Image.asset(sid.backdropPhoto, fit: BoxFit.cover),
          BackdropFilter(
            filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: _buildContent(context),
            ),
          ),
        ],
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  const VideoCard(this.video, {super.key});

  final Video video;

  BoxDecoration _buildShadowAndRoundedCorners() {
    return BoxDecoration(
      color: Colors.white.withOpacity(0.4),
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: const <BoxShadow>[
        BoxShadow(
          spreadRadius: 2.0,
          blurRadius: 10.0,
          color: Colors.black26,
        ),
      ],
    );
  }

  Widget _buildThumbnail() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Stack(
        children: <Widget>[
          Image.asset(video.thumbnail),
          Positioned(
            bottom: 12.0,
            right: 12.0,
            child: _buildPlayButton(),
          ),
        ],
      ),
    );
  }

  Widget _buildPlayButton() {
    return Material(
      color: Colors.black87,
      type: MaterialType.circle,
      child: InkWell(
        onTap: () async {
          if (await canLaunchUrl(Uri.parse(video.url))) {
            await launchUrl(Uri.parse(video.url));
          }
        },
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 4.0, right: 4.0),
      child: Text(
        video.title,
        style: TextStyle(color: Colors.white.withOpacity(0.85)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175.0,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
      decoration: _buildShadowAndRoundedCorners(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 3, child: _buildThumbnail()),
          Flexible(flex: 2, child: _buildInfo()),
        ],
      ),
    );
  }
}

class DEV {
  final String firstName;

  final String lastName;

  final String avatar;

  final String backdropPhoto;

  final String location;

  final String biography;

  final List<Video> videos;
  DEV({
    required this.firstName,
    required this.lastName,
    required this.avatar,
    required this.backdropPhoto,
    required this.location,
    required this.biography,
    required this.videos,
  });
}

class Video {
  final String title;

  final String thumbnail;

  final String url;
  Video({
    required this.title,
    required this.thumbnail,
    required this.url,
  });
}

final sid = DEV(
  firstName: 'Cimple',
  lastName: 'Sid',
  avatar: 'images/assets118/dude.jpg',
  backdropPhoto: 'images/assets118/bg.jpg',
  location: 'Mahendranagar, Nepal',
  biography: 'Siddhartha  Joshi is a Flutter dev  '
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.  '
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
  videos: <Video>[
    Video(
      title: 'WIFI hacking part 1',
      thumbnail: 'images/assets118/hacking1.jpg',
      url: 'https://www.youtube.com/watch?v=06qoTsKYWKE',
    ),
    Video(
      title: 'WIFI hacking part 2',
      thumbnail: 'images/assets118/hacking2.jpg',
      url: 'https://www.youtube.com/watch?v=3XG4c5_mGCM',
    ),
    Video(
      title: 'WIFI hacking part 3',
      thumbnail: 'images/assets118/hacking3.jpg',
      url: 'https://www.youtube.com/watch?v=C29QstsxWQE',
    ),
    Video(
      title: 'Find facebook users location',
      thumbnail: 'images/assets118/facebook.jpg',
      url: 'https://www.youtube.com/watch?v=J9zhKtL_gH0',
    ),
  ],
);
