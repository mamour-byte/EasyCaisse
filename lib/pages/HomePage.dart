import 'package:flutter/material.dart';
import 'package:easycaisse/services/animation.dart';
import "package:multi_dropdown/multiselect_dropdown.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected = false ;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final MultiSelectController _controller = MultiSelectController();


  @override
  Widget build(BuildContext context) {
    final animations = Animations();

    return  SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sélectionnez des options:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _gap(),
            MultiSelectDropDown(

              clearIcon: null,
              controller: _controller,
              onOptionSelected: (options) {
                debugPrint(options.toString());
              },
              options: const <ValueItem>[
                ValueItem(label: 'Option 1', value: '1'),
                ValueItem(label: 'Option 2', value: '2'),
                ValueItem(label: 'Option 3', value: '3'),
                ValueItem(label: 'Option 4', value: '4'),
                ValueItem(label: 'Option 5', value: '5'),
                ValueItem(label: 'Option 6', value: '6'),
              ],
              maxItems: 5,
              disabledOptions: const [ValueItem(label: 'Option 1', value: '1')],
              selectionType: SelectionType.multi,
              chipConfig: const ChipConfig(wrapType: WrapType.wrap),
              dropdownHeight: 300,
              optionTextStyle: const TextStyle(fontSize: 16),
              selectedOptionIcon: const Icon(Icons.check_circle),
            ),
            _gap(),
            MultiSelectDropDown(
              clearIcon: null,
              controller: _controller,
              onOptionSelected: (options) {
                debugPrint(options.toString());
              },
              options: const <ValueItem>[
                ValueItem(label: 'Option 1', value: '1'),
                ValueItem(label: 'Option 2', value: '2'),
                ValueItem(label: 'Option 3', value: '3'),
                ValueItem(label: 'Option 4', value: '4'),
                ValueItem(label: 'Option 5', value: '5'),
                ValueItem(label: 'Option 6', value: '6'),
              ],
              maxItems: 5,
              disabledOptions: const [ValueItem(label: 'Option 1', value: '1')],
              selectionType: SelectionType.multi,
              chipConfig: const ChipConfig(wrapType: WrapType.wrap),
              dropdownHeight: 300,
              optionTextStyle: const TextStyle(fontSize: 16),
              selectedOptionIcon: const Icon(Icons.check_circle),
            ),
            _gap(),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  padding: const EdgeInsets.only(left : 40, right: 40, top : 20, bottom:20)
                ),
                onPressed: () => null,
                child: Text("Envoyer"),
              ),
            ),
          ],
        ),
      ),
    );

  }
  Widget _gap() => const SizedBox(height: 20);
}
