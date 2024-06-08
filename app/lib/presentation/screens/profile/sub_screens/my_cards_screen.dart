import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'package:country_picker/country_picker.dart';
import 'package:easy_stepper/easy_stepper.dart';

class MyCardsScreen extends StatefulWidget {
  const MyCardsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyCardsScreenState createState() => _MyCardsScreenState();
}

class _MyCardsScreenState extends State<MyCardsScreen> {
  int activeStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Timeline"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Timeline.tileBuilder(
                dragStartBehavior: DragStartBehavior.down,
                builder: TimelineTileBuilder.fromStyle(
                  contentsAlign: ContentsAlign.basic,
                  contentsBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text('Timeline Event $index'),
                  ),
                  itemCount: 4,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showCountryPicker(
                  context: context,
                  //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
                  exclude: <String>['KN', 'MF'],
                  favorite: <String>['SE'],
                  //Optional. Shows phone code before the country name.
                  showPhoneCode: true,
                  onSelect: (Country country) {
                    print('Select country: ${country.displayName}');
                  },
                  // Optional. Sets the theme for the country list picker.
                  countryListTheme: CountryListThemeData(
                    // Optional. Sets the border radius for the bottomsheet.
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                    // Optional. Styles the search field.
                    inputDecoration: InputDecoration(
                      labelText: 'Search',
                      hintText: 'Start typing to search',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color(0xFF8C98A8).withOpacity(0.2),
                        ),
                      ),
                    ),
                    // Optional. Styles the text in the search field
                    searchTextStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                    ),
                  ),
                );
              },
              child: const Text('Show country picker'),
            ),
            EasyStepper(
              activeStep: activeStep,
              // lineLength: 70,
              // lineSpace: 0,
              // lineType: LineType.normal,
              // defaultLineColor: Colors.white,
              // finishedLineColor: Colors.orange,
              activeStepTextColor: Colors.black87,
              finishedStepTextColor: Colors.black87,
              internalPadding: 0,
              showLoadingAnimation: false,
              stepRadius: 8,
              showStepBorder: false,
              // lineDotRadius: 1.5,
              steps: [
                EasyStep(
                  customStep: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor:
                          activeStep >= 0 ? Colors.orange : Colors.white,
                    ),
                  ),
                  title: 'Waiting',
                ),
                EasyStep(
                  customStep: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor:
                          activeStep >= 1 ? Colors.orange : Colors.white,
                    ),
                  ),
                  title: 'Order Received',
                  topTitle: true,
                ),
                EasyStep(
                  customStep: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor:
                          activeStep >= 2 ? Colors.orange : Colors.white,
                    ),
                  ),
                  title: 'Preparing',
                ),
                EasyStep(
                  customStep: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor:
                          activeStep >= 3 ? Colors.orange : Colors.white,
                    ),
                  ),
                  title: 'On Way',
                  topTitle: true,
                ),
                EasyStep(
                  customStep: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor:
                          activeStep >= 4 ? Colors.orange : Colors.white,
                    ),
                  ),
                  title: 'Delivered',
                ),
              ],
              onStepReached: (index) => setState(() => activeStep = index),
            ),
          ],
        ),
      ),
    );
  }
}
