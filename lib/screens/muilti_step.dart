import 'package:flutter/material.dart';

class MultiStep extends StatefulWidget {
  const MultiStep({super.key});

  @override
  State<MultiStep> createState() => _MultiStepState();
}

class _MultiStepState extends State<MultiStep> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Multi Step'),
          centerTitle: true,
        ),
        body: Stepper(
          type: StepperType.horizontal,
          steps: getStep(),
          currentStep: currentStep,
          onStepContinue: () {
            final isLastStep = currentStep == getStep().length - 1;
            if (isLastStep) {
              print('Complete');
            } else {
              setState(() => currentStep += 1);
            }
          },
          onStepCancel:
              currentStep == 0 ? null : () => setState(() => currentStep -= 1),
        ),
      );

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final address = TextEditingController();
  final postcode = TextEditingController();


  List<Step> getStep() => [
        Step(
          isActive: currentStep >= 0,
          title: const Text('Account'),
          content: Column(
            children: <Widget>[
              TextFormField(
                controller: firstName,
                decoration: const InputDecoration(labelText: 'First Name'),
              )
            ],
          ),
        ),
        Step(
          isActive: currentStep >= 1,
          title: const Text('Address'),
          content: Column(
            children: <Widget>[
              TextFormField(
                controller: lastName,
                decoration: const InputDecoration(labelText: 'Last Name'),
              )
            ],
          ),
        ),
        Step(
          isActive: currentStep >= 2,
          title: const Text('Complete'),
          content: Column(
            children: <Widget>[
              TextFormField(
                controller: address,
                decoration: const InputDecoration(labelText: 'address'),
              ),
              TextFormField(
                controller: postcode,
                decoration: const InputDecoration(labelText: 'postcide'),
              )
            ],
          ),
        ),
      ];
}
