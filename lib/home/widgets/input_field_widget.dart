
import 'package:c13_whats_app_task/core/colors/app_colors.dart';
import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(child: TextFormField(
            style: const TextStyle(
                color: AppColors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold
            ),
            cursorColor: AppColors.green,
            decoration: InputDecoration(
              hintText: "Type a Message ...",
              hintStyle: const TextStyle(
                  color: AppColors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold
              ),
              prefixIcon: const Icon(Icons.camera_alt_rounded ,color: AppColors.white,),
              suffixIcon: const Icon(Icons.send,color: AppColors.white,),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(1000),
                borderSide: const BorderSide(width: 1 , color: AppColors.green)
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: const BorderSide(width: 1 , color: AppColors.green)
              ),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: const BorderSide(width: 1 , color: AppColors.green)
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: const BorderSide(width: 1 , color: AppColors.green)
              ),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: const BorderSide(width: 1 , color: AppColors.green)
              )
            ),
          )),
          const SizedBox(width: 16),
          IconButton(
            onPressed: (){},
              style: IconButton.styleFrom(
                backgroundColor: AppColors.green,
                foregroundColor: AppColors.white,
                padding: const EdgeInsets.all(16)
              ),
            icon: const Icon(Icons.mic , color: AppColors.white,)
          )
        ],
      ),
    );
  }
}
