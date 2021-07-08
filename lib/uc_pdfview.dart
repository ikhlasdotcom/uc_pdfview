import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'pdf_view.dart';
export 'pdf_view.dart';

class UCPDFView extends StatefulWidget {
  UCPDFView(
      {Key? key,
      this.filePath,
      this.pdfData,
      this.isLocalFilePath = true,
      this.onViewCreated,
      this.onRender,
      this.onPageChanged,
      this.onError,
      this.onPageError,
      this.onLinkHandler,
      this.gestureRecognizers,
      this.enableSwipe = true,
      this.swipeHorizontal = false,
      this.password,
      this.nightMode = false,
      this.autoSpacing = true,
      this.pageFling = true,
      this.pageSnap = true,
      this.fitEachPage = true,
      this.defaultPage = 0,
      this.fitPolicy = FitPolicy.WIDTH,
      this.preventLinkNavigation = false});

  /// If not null invoked once the web view is created.
  final PDFViewCreatedCallback? onViewCreated;
  final RenderCallback? onRender;
  final PageChangedCallback? onPageChanged;
  final ErrorCallback? onError;
  final PageErrorCallback? onPageError;
  final LinkHandlerCallback? onLinkHandler;

  /// Which gestures should be consumed by the pdf view.
  ///
  /// It is possible for other gesture recognizers to be competing with the pdf view on pointer
  /// events, e.g if the pdf view is inside a [ListView] the [ListView] will want to handle
  /// vertical drags. The pdf view will claim gestures that are recognized by any of the
  /// recognizers on this list.
  ///
  /// When this set is empty or null, the pdf view will only handle pointer events for gestures that
  /// were not claimed by any other gesture recognizer.
  final Set<Factory<OneSequenceGestureRecognizer>>? gestureRecognizers;

  /// The initial URL to load.
  final String? filePath;
  final Uint8List? pdfData;

  final bool isLocalFilePath;
  final bool enableSwipe;
  final bool swipeHorizontal;
  final String? password;
  final bool nightMode;
  final bool autoSpacing;
  final bool pageFling;
  final bool pageSnap;
  final int defaultPage;
  final FitPolicy fitPolicy;
  final bool fitEachPage;
  final bool preventLinkNavigation;

  @override
  _UCPDFViewState createState() => _UCPDFViewState();
}

class _UCPDFViewState extends State<UCPDFView> {
  @override
  Widget build(BuildContext context) {
    return PDFView(
      key: widget.key,
      filePath: widget.filePath,
      pdfData: widget.pdfData,
      onViewCreated: widget.onViewCreated,
      onRender: widget.onRender,
      onPageChanged: widget.onPageChanged,
      onError: widget.onError,
      onPageError: widget.onPageError,
      onLinkHandler: widget.onLinkHandler,
      gestureRecognizers: widget.gestureRecognizers,
      enableSwipe: widget.enableSwipe,
      swipeHorizontal: widget.swipeHorizontal,
      password: widget.password,
      nightMode: widget.nightMode,
      autoSpacing: widget.autoSpacing,
      pageFling: widget.pageFling,
      pageSnap: widget.pageSnap,
      fitEachPage: widget.fitEachPage,
      defaultPage: widget.defaultPage,
      fitPolicy: widget.fitPolicy,
      preventLinkNavigation: widget.preventLinkNavigation,
    );
  }
}
