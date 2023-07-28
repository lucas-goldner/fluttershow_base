import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/presentation_page.dart';

/// A widget that builds a page-based presentation.
///
/// It uses a [PageController] to navigate through the pages,
/// and the pages themselves are composed of [PresentationSlide].
class PageBuilderPresentation extends StatelessWidget {
  /// Constructs a [PageBuilderPresentation] widget.
  ///
  /// [presentationPages] is the list of pages in the presentation.
  /// Each page is represented by a [PresentationSlide],
  /// which encapsulates the widget that represents the page and any
  /// additional properties related to the presentation slide.
  ///
  /// [pageController] is the controller used to navigate between the pages.
  /// It determines which page is currently being displayed and
  /// can be used to change the current page programmatically.
  const PageBuilderPresentation({
    required this.presentationPages,
    required this.pageController,
    super.key,
  });

  /// The list of pages in the presentation.
  final List<PresentationSlide> presentationPages;

  /// The controller used to navigate between the pages.
  final PageController pageController;

  @override
  Widget build(BuildContext context) => PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: presentationPages.length,
        controller: pageController,
        itemBuilder: (context, index) => presentationPages[index].slideWidget,
      );
}
