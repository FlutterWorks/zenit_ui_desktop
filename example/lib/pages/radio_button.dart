import 'package:zenit_ui/zenit_ui.dart';

class ZenitRadioButtonExample extends StatefulWidget {
  const ZenitRadioButtonExample({super.key});

  @override
  State<ZenitRadioButtonExample> createState() => _ZenitRadioButtonExampleState();
}

bool val = false;

class _ZenitRadioButtonExampleState extends State<ZenitRadioButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            ZenitRadioButton(
              value: val,
              onChanged: (value) => setState(() => val = !val),
            ),
            const Gap(16),
            ZenitRadioButton(
              value: !val,
              onChanged: (value) => setState(() => val = !val),
            ),
            const Gap(16),
            ZenitRadioButton(
              value: val,
              onChanged: (value) => setState(() => val = !val),
            ),
          ],
        ),
        const Gap(24),
        Column(
          children: [
            ZenitRadioButton(
              value: !val,
              onChanged: (value) => setState(() => val = !val),
            ),
            const Gap(16),
            ZenitRadioButton(
              value: val,
              onChanged: (value) => setState(() => val = !val),
            ),
            const Gap(16),
            ZenitRadioButton(
              value: !val,
              onChanged: (value) => setState(() => val = !val),
            ),
          ],
        ),
      ],
    );
  }
}
