library zenit_ui;

import 'dart:ui';

import 'package:flutter/material.dart' as material;

// Default exports
export 'package:flutter/material.dart' hide Chip, Switch, Tab, Theme, Radio, SwitchListTile, Checkbox;
export 'package:flutter/widgets.dart';
export 'package:gap/gap.dart';
// Zenit exports
//
// Zenit buttons
export 'package:zenit_ui/src/components/buttons/buttons.dart';
// Zenit checkbox
export 'package:zenit_ui/src/components/checkbox/checkbox.dart';
// Zenit Flat Button
export 'package:zenit_ui/src/components/icon_button/zenit_icon_button.dart';
// Zenit switch list tile
export 'package:zenit_ui/src/components/list_tile/switch_list_tile.dart';
// Zenit Option Button
export 'package:zenit_ui/src/components/option_button/zenit_option_button.dart';
// Zenit radio button
export 'package:zenit_ui/src/components/radio_button/radio_button.dart';
// Zenit slider
export 'package:zenit_ui/src/components/slider/slider.dart';
// Zenit switch
export 'package:zenit_ui/src/components/switch/switch.dart';
// Zenit text field
export 'package:zenit_ui/src/components/textfield/text_flield.dart';
// Zenit layout item
export 'package:zenit_ui/src/layout/layout_page/list_view/zenit_layout_item.dart';
// Zenit layout tile
export 'package:zenit_ui/src/layout/layout_page/list_view/zenit_layout_tile.dart';
// Zenit layout page
export 'package:zenit_ui/src/layout/layout_page/zenit_navigation_layout.dart';
// Zenit tab view tab
export 'package:zenit_ui/src/layout/tab_view/tab.dart';
// Zenit tab view page
export 'package:zenit_ui/src/layout/tab_view/tab_page.dart';
// Zenit tab view
export 'package:zenit_ui/src/layout/tab_view/tab_view.dart';
// Zenit window
export 'package:zenit_ui/src/layout/window/zenit_window.dart';
// Zenit window control
export 'package:zenit_ui/src/layout/window/zenit_window_control.dart';
// Zenit colors
export 'package:zenit_ui/src/theme/colors.dart';
// Zenit theme
export 'package:zenit_ui/src/theme/theme.dart';

//Type Definitions

//Switch
typedef MaterialSwitch = material.Switch;

//Theme
typedef MaterialTheme = material.Theme;

//TextField
typedef MaterialTextField = material.TextField;

//Slider
typedef MaterialSlider = material.Slider;

//RadioButton
typedef MaterialRadioButton = material.Radio;

//SwitchListTile
typedef MaterialSwitchListTile = material.SwitchListTile;

//Checkbox
typedef MaterialCheckbox = material.Checkbox;

//Zenit object extensions
extension ObX on Object? {
  bool get isNull => this == null;
  bool get isNotNull => this != null;
}

extension ColorX on Color {
  Color mix(Color foregrounnd) => Color.lerp(this, foregrounnd, 0.5) ?? this;
}
