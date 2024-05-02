import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iocn_demo_project/app/utils/app_colors.dart';


class LoginTextfield extends StatelessWidget {
  final String fieldname;
  final bool isIcon;
  final bool isSecure;
  final VoidCallback function;

  final TextEditingController controller;
     final FormFieldValidator<String>? fieldValidator;

     LoginTextfield({super.key,
     required this.controller,
      required this.fieldname,required this.isIcon,required this.isSecure,required this.function, required this.fieldValidator });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const  EdgeInsets.only(right: 30, left: 30,), 
      child: Directionality(
        textDirection: TextDirection.rtl,  
        child: TextFormField(
          controller: controller,
          validator: fieldValidator,
          keyboardType: TextInputType.number,
           inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
            contentPadding:  const EdgeInsets.only(top: 10),
            labelText: fieldname,
            labelStyle: const TextStyle(fontSize: 18,color:AppColor.grey ),        
           suffixIcon: isIcon ?  isSecure ?
           IconButton(
            icon: const Icon(Icons.visibility_off,color: AppColor.grey,),
            onPressed: (){
              function();
            }
            ):
             IconButton(
            icon: const Icon(Icons.visibility,color: AppColor.grey,),
            onPressed: (){
              function();
            }
            ):
           const Icon(Icons.phone,color: Colors.transparent,)
          ),
          obscureText: isSecure,
        ),
      ),
    );
  }
}
