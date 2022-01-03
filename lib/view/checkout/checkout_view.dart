import 'package:flutter/material.dart';
import 'address_form.dart';
import 'card_example.dart';
import 'card_form.dart';

class CheckOutView extends StatefulWidget {
  const CheckOutView({Key? key}) : super(key: key);

  @override
  State<CheckOutView> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckOutView> {
  static  List<Step> _steps = [
    Step(
      title: Text('Address'),
      content: AddressForm(),
    ),
    Step(
      title: Text('Card Details'),
      content: CardForm(),
    ),
    Step(
      title: Text('Overview'),
      content: _Overview(),
    )
  ];
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: Stepper(
        steps: _steps,
        type: StepperType.horizontal,
        onStepTapped: (step) => setState(() => _currentStep = step),
        onStepContinue: () {
          setState(() {
            if (_currentStep < _steps.length - 1) {
              _currentStep += 1;
            } else {
              _currentStep = 0;
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if (_currentStep > 0) {
              _currentStep -= 1;
            } else {
              _currentStep = 0;
            }
          });
        },
        currentStep: _currentStep,
      ),
    );
  }
}





class _Overview extends StatelessWidget {
  const _Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Center(child: Text('Thank you for your order!')),
      ],
    );
  }
}
