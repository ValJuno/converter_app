import 'package:flutter/widgets.dart';
import 'package:graphic_utilities/border_bottom_box.dart';
import 'package:labelled_text/labelled_text.dart';

class Converter extends StatefulWidget {
  const Converter({
    Key? key,
    required this.startUnity,
    required this.endUnity,
    required this.conversion,
  }) : super(key: key);

  final String startUnity;
  final String endUnity;
  final Function(double) conversion;

  @override
  State<Converter> createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  double start = 0;
  double end = 0;

  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.value = TextEditingValue.empty;
  }

  @override
  Widget build(BuildContext context) {
    return BorderBottomBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelledText(
            text: start.toStringAsFixed(2),
            labelText: widget.startUnity,
            editable: true,
            controller: controller,
            onClear: () {
              setState(() {
                start = 0;
                end = 0;
              });
            },
            onChanged: (value) {
              setState(() {
                start = double.parse(value);
                end = widget.conversion(start);
              });
            },
          ),
          const SizedBox(height: 10),
          LabelledText(
            text: end.toStringAsFixed(2),
            labelText: widget.endUnity,
            editable: false,
          ),
        ],
      ),
    );
  }
}
