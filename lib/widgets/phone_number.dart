import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

Container phoneNumber(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        IntlPhoneField(
          keyboardType: TextInputType.number,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black12,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.teal,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            suffixIcon: const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 32,
            ),
          ),
          onChanged: (phone) {
            print(phone.completeNumber);
          },
          onCountryChanged: (country) {
            print('Country changed to: ' + country.name);
          },
        ),
      ],
    ),
  );
}
