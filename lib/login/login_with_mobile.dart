import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_base/extensions/custom_icons_icons.dart';
import 'package:flutter_project_base/utils/color.dart';
import 'package:flutter_project_base/utils/strings.dart';
import 'package:flutter_project_base/utils/text_theme.dart';
import 'package:oktoast/oktoast.dart';

class LoginWithMobile extends StatefulWidget {
  const LoginWithMobile({Key? key}) : super(key: key);

  @override
  State<LoginWithMobile> createState() => _LoginWithMobileState();
}

class _LoginWithMobileState extends State<LoginWithMobile> {
  var initialCountryCode = "+91";
  var selectedCountryCode = "";

  _LoginWithMobileState() {
    selectedCountryCode = initialCountryCode;
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final countryCodeController = TextEditingController();
    final mobileNumberController = TextEditingController();

    return Container(
      width: mediaQuery.size.width,
      height: mediaQuery.size.height -
          mediaQuery.padding.top -
          mediaQuery.padding.bottom,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/splash_logo.png",
            width: 200,
            height: 250,
          ),
          Text(
            appName,
            style: Theme.of(context).textTheme.headline1,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 30.0,
              horizontal: 20.0,
            ),
            child: Text(
              messageDesc,
              style: textStyleRegular,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            child: Column(
              children: [
                CountryListPick(
                  appBar: AppBar(
                    backgroundColor: Colors.redAccent,
                    title: const Text(chooseYourCountry),
                  ),
                  pickerBuilder: (context, countryCode) {
                    return Container(
                      width: double.infinity,
                      height: 50.0,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: borderLineColor),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            countryCode?.name ?? "",
                            style: textStyleRegular,
                          ),
                          const Icon(
                            CustomIcons.down_arrow,
                            color: headerIconColor,
                            size: 20.0,
                          )
                        ],
                      ),
                    );
                  },
                  theme: CountryTheme(
                    alphabetSelectedBackgroundColor: Colors.red,
                    isDownIcon: false,
                    isShowFlag: false,
                    isShowCode: false,
                    isShowTitle: false,
                  ),
                  initialSelection: initialCountryCode,
                  onChanged: (value) {
                    setState(() {
                      selectedCountryCode = value?.dialCode ?? "";
                    });
                  },
                  useSafeArea: false,
                  useUiOverlay: true,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 10.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: mediaQuery.size.width * 0.20,
                        child: TextField(
                          readOnly: true,
                          showCursor: false,
                          enableInteractiveSelection: false,
                          controller: countryCodeController
                            ..text = selectedCountryCode,
                          keyboardType: TextInputType.none,
                          style: textFieldStyle,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(10.0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Flexible(
                        child: TextField(
                          controller: mobileNumberController,
                          cursorColor: Colors.redAccent,
                          keyboardType: const TextInputType.numberWithOptions(
                              signed: false, decimal: false),
                          style: textFieldStyle,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(10.0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 40.0,
                ),
                width: double.infinity,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () => getAllValues(
                      mobileNumberController, countryCodeController, context),
                  child: const Text(sendVerificationCode),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.redAccent),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

void getAllValues(TextEditingController mobileNumber,
    TextEditingController countrycode, BuildContext context) {
  var text = "";
  if (mobileNumber.text.isEmpty) {
    text = errorMobileNumberRequired;
  } else {
    text = mobileNumber.text;
  }
  showToast(text, position: ToastPosition.bottom);
}
