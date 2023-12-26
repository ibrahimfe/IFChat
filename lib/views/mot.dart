import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MotPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meet Our Team',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          TeamMemberCard(
            name: 'John Doe',
            imageUrl: 'assets/images/stewie.png',
            numbers: '1234567890',
            words: 'Creative, Innovative',
            facebookLink: 'https://www.instagram.com/ga.ra.ga/',
            instagramLink: 'https://www.instagram.com/johndoe',
            emailLink: 'mailto:johndoe@example.com',
            whatsappLink: 'https://wa.me/1234567890',
          ),
          TeamMemberCard(
            name: 'Jane Doe',
            imageUrl: 'assets/images/stewie.png',
            numbers: '9876543210',
            words: 'Team Player, Passionate',
            facebookLink: 'https://www.facebook.com/janedoe',
            instagramLink: 'https://www.instagram.com/janedoe',
            emailLink: 'mailto:janedoe@example.com',
            whatsappLink: 'https://wa.me/9876543210',
          ),
          TeamMemberCard(
            name: 'John Doe',
            imageUrl: 'assets/images/stewie.png',
            numbers: '1234567890',
            words: 'Creative, Innovative',
            facebookLink: 'https://www.instagram.com/ga.ra.ga/',
            instagramLink: 'https://www.instagram.com/johndoe',
            emailLink: 'mailto:johndoe@example.com',
            whatsappLink: 'https://wa.me/1234567890',
          ),
          TeamMemberCard(
            name: 'John Doe',
            imageUrl: 'assets/images/stewie.png',
            numbers: '1234567890',
            words: 'Creative, Innovative',
            facebookLink: 'https://www.instagram.com/ga.ra.ga/',
            instagramLink: 'https://www.instagram.com/johndoe',
            emailLink: 'mailto:johndoe@example.com',
            whatsappLink: 'https://wa.me/1234567890',
          ),
          TeamMemberCard(
            name: 'John Doe',
            imageUrl: 'assets/images/stewie.png',
            numbers: '1234567890',
            words: 'Creative, Innovative',
            facebookLink: 'https://www.instagram.com/ga.ra.ga/',
            instagramLink: 'https://www.instagram.com/johndoe',
            emailLink: 'mailto:johndoe@example.com',
            whatsappLink: 'https://wa.me/1234567890',
          ),
          TeamMemberCard(
            name: 'John Doe',
            imageUrl: 'assets/images/stewie.png',
            numbers: '1234567890',
            words: 'Creative, Innovative',
            facebookLink: 'https://www.instagram.com/ga.ra.ga/',
            instagramLink: 'https://www.instagram.com/johndoe',
            emailLink: 'mailto:johndoe@example.com',
            whatsappLink: 'https://wa.me/1234567890',
          ),
          TeamMemberCard(
            name: 'John Doe',
            imageUrl: 'assets/images/stewie.png',
            numbers: '1234567890',
            words: 'Creative, Innovative',
            facebookLink: 'https://www.instagram.com/ga.ra.ga/',
            instagramLink: 'https://www.instagram.com/johndoe',
            emailLink: 'mailto:johndoe@example.com',
            whatsappLink: 'https://wa.me/1234567890',
          ),
          TeamMemberCard(
            name: 'John Doe',
            imageUrl: 'assets/images/stewie.png',
            numbers: '1234567890',
            words: 'Creative, Innovative',
            facebookLink: 'https://www.instagram.com/ga.ra.ga/',
            instagramLink: 'https://www.instagram.com/johndoe',
            emailLink: 'mailto:johndoe@example.com',
            whatsappLink: 'https://wa.me/1234567890',
          ),
          TeamMemberCard(
            name: 'John Doe',
            imageUrl: 'assets/images/stewie.png',
            numbers: '1234567890',
            words: 'Creative, Innovative',
            facebookLink: 'https://www.instagram.com/ga.ra.ga/',
            instagramLink: 'https://www.instagram.com/johndoe',
            emailLink: 'mailto:johndoe@example.com',
            whatsappLink: 'https://wa.me/1234567890',
          ),
          TeamMemberCard(
            name: 'John Doe',
            imageUrl: 'assets/images/stewie.png',
            numbers: '1234567890',
            words: 'Creative, Innovative',
            facebookLink: 'https://www.instagram.com/ga.ra.ga/',
            instagramLink: 'https://www.instagram.com/johndoe',
            emailLink: 'mailto:johndoe@example.com',
            whatsappLink: 'https://wa.me/1234567890',
          ),
          TeamMemberCard(
            name: 'John Doe',
            imageUrl: 'assets/images/stewie.png',
            numbers: '1234567890',
            words: 'Creative, Innovative',
            facebookLink: 'https://www.instagram.com/ga.ra.ga/',
            instagramLink: 'https://www.instagram.com/johndoe',
            emailLink: 'mailto:johndoe@example.com',
            whatsappLink: 'https://wa.me/1234567890',
          ),
          TeamMemberCard(
            name: 'John Doe',
            imageUrl: 'assets/images/stewie.png',
            numbers: '1234567890',
            words: 'Creative, Innovative',
            facebookLink: 'https://www.instagram.com/ga.ra.ga/',
            instagramLink: 'https://www.instagram.com/johndoe',
            emailLink: 'mailto:johndoe@example.com',
            whatsappLink: 'https://wa.me/1234567890',
          ),
          // Tambahkan kartu untuk anggota tim lainnya di sini...
        ],
      ),
    );
  }
}

class TeamMemberCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String numbers;
  final String words;
  final String facebookLink;
  final String instagramLink;
  final String emailLink;
  final String whatsappLink;

  TeamMemberCard({
    required this.name,
    required this.imageUrl,
    required this.numbers,
    required this.words,
    required this.facebookLink,
    required this.instagramLink,
    required this.emailLink,
    required this.whatsappLink,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipOval(
            child: Image.network(
              imageUrl,
              width: 80.0,
              height: 80.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            numbers,
            style: TextStyle(fontSize: 14.0),
          ),
          SizedBox(height: 8.0),
          Text(
            words,
            style: TextStyle(fontSize: 14.0),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSocialIcon('assets/images/facebook.png', facebookLink),
              SizedBox(width: 8.0),
              buildSocialIcon('assets/images/instagram.png', instagramLink),
              SizedBox(width: 8.0),
              buildSocialIcon('assets/images/gmail.png', emailLink),
              SizedBox(width: 8.0),
              buildSocialIcon('assets/images/whatsapp.png', whatsappLink),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }

  Widget buildSocialIcon(String imagePath, String link) {
    return GestureDetector(
      onTap: () {
        _launchURL(link);
      },
      child: Image.asset(
        imagePath,
        width: 30.0,
        height: 30.0,
      ),
    );
  }

  void _launchURL(String url) async {
    if (!await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
