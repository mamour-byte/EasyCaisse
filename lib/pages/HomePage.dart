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
  final MultiSelectController _controller1 = MultiSelectController();
  final MultiSelectController _controller2 = MultiSelectController();
  final MultiSelectController _controller3 = MultiSelectController();


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
              'Sélectionnez vos options:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _gap(),
            MultiSelectDropDown(

              clearIcon: null,
              controller: _controller1,
              onOptionSelected: (options) {
                debugPrint(options.toString());
              },
              options: const <ValueItem>[
                ValueItem(label: 'Paim Thon', value: '1'),
                ValueItem(label: 'Paim Haricot ', value: '2'),
                ValueItem(label: 'Spaghetti ', value: '3'),
                ValueItem(label: 'Sandwich', value: '4'),
                ValueItem(label: 'Foie ', value: '5'),
                ValueItem(label: 'Viande', value: '6'),
              ],
              maxItems: 5,
              disabledOptions: const [ValueItem(label: 'Paim Thon', value: '1')],
              selectionType: SelectionType.multi,
              chipConfig: const ChipConfig(wrapType: WrapType.wrap),
              dropdownHeight: 300,
              optionTextStyle: const TextStyle(fontSize: 16),
              selectedOptionIcon: const Icon(Icons.check_circle),
            ),
            _gap(),

            MultiSelectDropDown(
              clearIcon: null,
              controller: _controller2,
              onOptionSelected: (options) {
                debugPrint(options.toString());
              },
              options: const <ValueItem>[
                ValueItem(label: 'Coca Cola', value: '1'),
                ValueItem(label: 'Fanta', value: '2'),
                ValueItem(label: 'Eau Seo', value: '3'),
                ValueItem(label: 'Eau kirene', value: '4'),
                ValueItem(label: 'Pepsi', value: '5'),
                ValueItem(label: 'Bissap ', value: '6'),
              ],
              maxItems: 5,
              disabledOptions: const [ValueItem(label: 'Coca Cola', value: '1')],
              selectionType: SelectionType.multi,
              chipConfig: const ChipConfig(wrapType: WrapType.wrap),
              dropdownHeight: 300,
              optionTextStyle: const TextStyle(fontSize: 16),
              selectedOptionIcon: const Icon(Icons.check_circle),
            ),

            _gap(),

            MultiSelectDropDown(
              clearIcon: null,
              controller: _controller3,
              onOptionSelected: (options) {
                debugPrint(options.toString());
              },
              options: const <ValueItem>[
                ValueItem(label: 'Verre', value: '1'),
                ValueItem(label: 'Stick café', value: '2'),
                ValueItem(label: 'Laitcran', value: '3'),
                ValueItem(label: 'Lait Dano', value: '4'),
              ],
              maxItems: 5,
              disabledOptions: const [ValueItem(label: 'Verre', value: '1')],
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
