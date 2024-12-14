
import 'package:c13_whats_app_task/core/assets/app_images.dart';
import 'package:c13_whats_app_task/core/colors/app_colors.dart';
import 'package:flutter/material.dart';

class WhatsAppHomeScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WhatsAppHomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: AppColors.white,
      titleSpacing: 0,
      leadingWidth: 40,
      backgroundColor: AppColors.green,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_back_ios,
        ),
      ),
      title: const Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage(AppImages.userImagePath),
          ),
          SizedBox(width: 8),
          Text(
            "John Safwat",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: [
        IconButton(
            onPressed: (){},
            icon: const Icon(Icons.call)
        ),
        IconButton(
            onPressed: (){},
            icon: const Icon(Icons.videocam_outlined)
        ),
        IconButton(
            onPressed: (){},
            icon: const Icon(Icons.more_vert)
        ),
      ],
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size(100, 64);
}
