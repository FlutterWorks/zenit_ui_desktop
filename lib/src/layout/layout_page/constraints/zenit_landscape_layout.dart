import 'package:zenit_ui/src/constants/constants.dart';
import 'package:zenit_ui/src/layout/layout_page/list_view/zenit_layout_destination_list_view.dart';
import 'package:zenit_ui/zenit_ui.dart';

class ZenitLandscapeLayout extends StatefulWidget {
  const ZenitLandscapeLayout({
    super.key,
    required this.length,
    required this.selectedIndex,
    required this.pageBuilder,
    required this.onPageSelected,
    required this.destinationBuilder,
    this.controller,
    this.appBar,
    this.globalFloatingActionButton,
    this.margin = kDefaultPageMargin,
  });

  /// The number of pages in the [ZenitLandscapeLayout].
  final int length;

  final ZenitNavigationLayoutBuilder destinationBuilder;

  /// The index of the selected page.
  final int selectedIndex;

  /// Builds a page for the given index.
  final IndexedWidgetBuilder pageBuilder;

  /// Called when the user selects a page.
  final ValueChanged<int> onPageSelected;

  /// A controller that can control the index of the [ZenitLandscapeLayout].
  final ValueNotifier<int>? controller;

  /// AppBar for the [ZenitLandscapeLayout]
  final PreferredSizeWidget? appBar;

  /// Creates a global floating action button throughout all Pages
  final FloatingActionButton? globalFloatingActionButton;

  /// Page Margin
  final EdgeInsets margin;

  @override
  State<ZenitLandscapeLayout> createState() => _ZenitLandscapeLayoutState();
}

class _ZenitLandscapeLayoutState extends State<ZenitLandscapeLayout> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
    widget.controller?.addListener(controllerCallback);
  }

  // Notifier for the controler
  void controllerCallback() {
    onTap(widget.controller!.value);
  }

  void onTap(int index) {
    widget.onPageSelected(index);
    setState(() => _selectedIndex = index);
  }

  // getter for the index of the selected page.
  int get selectedIndex => _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 256,
              child: Scaffold(
                body: ZenitLayoutDestinationListView(
                  length: widget.length,
                  selectedIndex: selectedIndex,
                  onTap: onTap,
                  builder: widget.destinationBuilder,
                ),
              ),
            ),
            //_buildVerticalSeparator(),
            Expanded(
              child: SizedBox.expand(
                child: ClipRRect(
                  child: Padding(
                    padding: widget.margin,
                    child: Navigator(
                      pages: [
                        MaterialPage(
                          key: ValueKey(_selectedIndex),
                          child: widget.length > _selectedIndex
                              ? widget.pageBuilder(context, _selectedIndex)
                              : widget.pageBuilder(context, 0),
                        ),
                      ],
                      onPopPage: (route, result) => route.didPop(result),
                      observers: [HeroController()],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildVerticalSeparator() {
    // Fix for the ultra white divider on flutter web
    final theme = ZenitTheme.of(context);
    return VerticalDivider(
      thickness: 1,
      width: 1,
      //indent: 8,
      //endIndent: 8,
      color: theme.surfaceColor,
    );
  }
}
