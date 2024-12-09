import 'package:flutter/material.dart';
import 'widgetbook.directories.g.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const WidgetBook());
}

class WidgetBook extends StatefulWidget {
  const WidgetBook({super.key});

  @override
  State<WidgetBook> createState() => _WidgetBookState();
}

class _WidgetBookState extends State<WidgetBook> {
  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      // Use the generated directories variable
      directories: directories,
      addons: [
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhone13,
            Devices.ios.iPhone13Mini,
            Devices.android.samsungGalaxyNote20Ultra,
            Devices.android.samsungGalaxyA50,
            Devices.android.samsungGalaxyNote20,
            Devices.android.samsungGalaxyS20
          ],
          initialDevice: Devices.ios.iPhone13,
        ),
        MaterialThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: ThemeData.light(),
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: ThemeData.dark(),
            ),
          ],
        ),
        AlignmentAddon(),
      ],
    );
  }
}
