import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page_layout_builder_model.dart';
export 'page_layout_builder_model.dart';

class PageLayoutBuilderWidget extends StatefulWidget {
  const PageLayoutBuilderWidget({
    super.key,
    required this.header,
    required this.content,
    required this.footer,
  });

  final Widget Function()? header;
  final Widget Function()? content;
  final Widget Function()? footer;

  @override
  State<PageLayoutBuilderWidget> createState() =>
      _PageLayoutBuilderWidgetState();
}

class _PageLayoutBuilderWidgetState extends State<PageLayoutBuilderWidget> {
  late PageLayoutBuilderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageLayoutBuilderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Builder(builder: (_) {
            return widget.header!();
          }),
          Builder(builder: (_) {
            return widget.content!();
          }),
          Builder(builder: (_) {
            return widget.footer!();
          }),
        ],
      ),
    );
  }
}
