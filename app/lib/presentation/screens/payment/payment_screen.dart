import 'package:app/presentation/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import '../../core/utils/constants/colors.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  FocusNode ccvFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    ccvFocusNode.addListener(() {
      setState(() {
        isCvvFocused = ccvFocusNode.hasFocus;
      });
    });
    _loadSavedCard();
  }

  void _loadSavedCard() async {
    try {
      // final savedCardNumber
    } catch (e) {
      // no savedCardNumber
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
        child: Column(
          children: <Widget>[
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              onCreditCardWidgetChange: (val) => oncreditCardBrandChange(val),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Card Number'),
                      onChanged: (value) {
                        setState(() {
                          cardNumber = value;
                        });
                      },
                    ),
                    TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Expiry Date'),
                      onChanged: (value) {
                        setState(() {
                          expiryDate = value;
                        });
                      },
                    ),
                    TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Card Holder Name'),
                      onChanged: (value) {
                        setState(() {
                          cardHolderName = value;
                        });
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'CVV'),
                      onChanged: (value) {
                        setState(() {
                          cvvCode = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void oncreditCardBrandChange(CreditCardBrand creditCardBrand) {
    // setState(() {
    // cardNumber = creditCardBrand.cardNumber;
    // expiryDate = creditCardBrand.expiryDate;
    // cardHolderName = creditCardBrand.cardHolderName;
    // cvvCode = creditCardBrand.cvvCode;
    // isCvvFocused = creditCardBrand.isCvvFocused;
    // });
  }
}
