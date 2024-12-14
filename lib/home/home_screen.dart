import 'package:c13_whats_app_task/core/assets/app_images.dart';
import 'package:c13_whats_app_task/core/colors/app_colors.dart';
import 'package:c13_whats_app_task/home/widgets/input_field_widget.dart';
import 'package:c13_whats_app_task/home/widgets/message_widget.dart';
import 'package:c13_whats_app_task/home/widgets/whats_app_home_screen_app_bar.dart';
import 'package:c13_whats_app_task/models/message.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Message> messages  = [
    Message(message: "Hello" , isSender: false),
    Message(message: "Hello" , isSender: true),
    Message(message: "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!" , isSender: false),
    Message(image: AppImages.routeImagePath , isSender: false),
    Message(message:'This is Image' ,image: AppImages.routeImagePath , isSender: false),
    Message(message:'what a Great Content Tp learn Flutter' ,isSender: true),
    Message(message:'This is Image' ,image: AppImages.routeImagePath , isSender: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.black,
          image: DecorationImage(
              image: AssetImage(AppImages.backgroundImagePath),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const WhatsAppHomeScreenAppBar(),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(16),
                separatorBuilder: (context, index) => const SizedBox(height: 16,),
                itemBuilder: (context, index) => MessageWidget(message: messages[index]),
                itemCount: messages.length,
              ),
            ),
            const InputFieldWidget()
          ],
        ),
      ),
    );
  }
}
