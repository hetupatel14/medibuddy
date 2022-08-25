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
        TextFormField(
          keyboardType: TextInputType.name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black12,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.teal,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            labelText: "Username"
          ),
          onTap: () {},
        ),
        SizedBox(height: 10,),
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
            labelText: "Phone Number"
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
