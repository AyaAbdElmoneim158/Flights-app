import 'package:animate_do/animate_do.dart';
import 'package:app/presentation/core/reusable_widgets/app_button.dart';
import 'package:app/presentation/core/reusable_widgets/app_text_field.dart';
import 'package:app/presentation/core/reusable_widgets/success_payment.dart';
import 'package:app/presentation/core/utils/constants/images.dart';
import 'package:app/presentation/core/utils/constants/sizes.dart';
import 'package:app/presentation/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import '../../core/utils/constants/colors.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import '../../core/utils/constants/spacing.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final storage = const FlutterSecureStorage();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  FocusNode cvvFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    cvvFocusNode.addListener(() {
      setState(() {
        isCvvFocused = cvvFocusNode.hasFocus;
      });
    });

    _loadSavedCard();
  }

  void _loadSavedCard() async {
    try {
      final savedCardNumber = await storage.read(key: 'cardNumber');
      final savedExpiryDate = await storage.read(key: 'expiry Date');
      final savedCardHolderName = await storage.read(key: 'cardHolderName');
      setState(() {
        cardNumber = savedCardNumber ?? '';
        expiryDate = savedExpiryDate ?? '';
        cardHolderName = savedCardHolderName ?? '';

        debugPrint("Loaded saved card details.");
      });
    } catch (e) {
      debugPrint("Error loading saved card: $e");
    }
  }

  Future<void> _saveCard() async {
    try {
      await storage.write(key: 'cardNumber', value: cardNumber);
      await storage.write(key: 'expiry Date', value: expiryDate);
      await storage.write(key: 'cardHolderName', value: cardHolderName);
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Your Card details have been saved.')),
      );
      debugPrint("Card details saved successfully.");
    } catch (e) {
      debugPrint("Error saving card: $e");
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to save card details.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Payment",
          style: AppStyles.font16Gray800Medium,
        ),
      ),
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ZoomIn(
                duration: const Duration(milliseconds: 500),
                child: CreditCardWidget(
                  cardNumber: cardNumber,
                  expiryDate: expiryDate,
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  showBackView: isCvvFocused,
                  onCreditCardWidgetChange: (_) {},
                  backgroundImage: AppImages.airTour,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(AppSizes.defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ZoomIn(
                      duration: const Duration(milliseconds: 750),
                      child: AppTextFormField(
                        hintText: 'Card Number',
                        onChanged: (value) {
                          setState(() {
                            cardNumber = value;
                          });
                        },
                        validator: (val) {},
                      ),
                    ),
                    verticalSpace(AppSizes.spaceBtwInputFields),
                    Row(
                      children: [
                        Expanded(
                          child: FadeInLeft(
                            duration: const Duration(milliseconds: 1000),
                            child: AppTextFormField(
                              hintText: 'Expiry Date',
                              onChanged: (value) {
                                setState(() {
                                  expiryDate = value;
                                });
                              },
                              validator: (val) {},
                            ),
                          ),
                        ),
                        horizontalSpace(AppSizes.spaceBtwInputFields),
                        Expanded(
                          child: FadeInLeft(
                            duration: const Duration(milliseconds: 1250),
                            child: AppTextFormField(
                              hintText: 'CVV',
                              validator: (val) {},
                              onChanged: (value) {
                                setState(() {
                                  cvvCode = value;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(AppSizes.spaceBtwInputFields),
                    FadeInUpBig(
                      duration: const Duration(milliseconds: 1500),
                      child: AppTextButton(
                          buttonText: "SaveCard",
                          textStyle: AppStyles.font16WhiteRegular,
                          onPressed: () {
                            _saveCard();
                            Get.to(() => const SuccessPaymentScreen());
                          }),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
