import 'package:c13_whats_app_task/core/colors/app_colors.dart';
import 'package:c13_whats_app_task/models/message.dart';
import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final Message message;

  const MessageWidget({required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          decoration: BoxDecoration(
              color: message.isSender ? AppColors.gray : AppColors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: const Radius.circular(16),
                bottomRight: const Radius.circular(16),
                topLeft: Radius.circular(message.isSender ? 16 : 0),
                topRight: Radius.circular(message.isSender ? 0 : 16),
              )),
          child: Column(
            crossAxisAlignment: message.isSender
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            children: [
              if (message.message != null)
                Text(
                  message.message!,
                  style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              if (message.image != null && message.message != null)
                const SizedBox(
                  height: 8,
                ),
              if (message.image != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(message.image!),
                )
            ],
          ),
        ),
      ],
    );
  }
}
