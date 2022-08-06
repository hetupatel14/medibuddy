import 'package:country_calling_code_picker/picker.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  static const routeName = '/-homescreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Country? _selectedCountry;

  void initState() {
    initCountry();
    super.initState();
  }

  void initCountry() async {
    final country = await getDefaultCountry(context);
    setState(() {
      _selectedCountry = country;
    });
  }

  @override
  Widget build(BuildContext context) {
    final country = _selectedCountry;
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        title: const Text("Medi Buddy"),
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              country == null
                  ? Container()
                  : Column(
                      children: [
                        Image.asset(
                          country.flag,
                          package: countryCodePackageName,
                          width: 100,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          '${country.callingCode} ${country.name} (${country.countryCode})',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
              SizedBox(
                height: 100,
              ),
              MaterialButton(
                  onPressed: _onPressedShowBottomSheet,
                  child: Text("Select Country"))
            ],
          ),
        ),
      ),
    );
  }

  void _onPressedShowBottomSheet() async {
    final country = await showCountryPickerSheet(context);
    if (country != null) {
      setState(() {
        _selectedCountry = country;
      });
    }
  }
}

class Pickerpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CountryPickerWidget(onSelected: (country) => Navigator.pop(context, country),),
      ),
    );
  }
}