import 'package:flutter/cupertino.dart';

/// A class representing a slide within a presentation.
///
/// This class encapsulates all the information required to render
/// a slide in the presentation, including the widget to display and
/// the number of animation steps involved in presenting the slide.
///
/// The `slideWidget` represents the content of the slide,
/// `animationSteps` determines the number of times a slide can be clicked
/// before switching to the next slide, and `title` provides an optional
/// string that will be used as the slide's title in the menu.
///
/// To use this class, provide a `slideWidget` and optionally define the number
/// of `animationSteps` and a `title`.
class PresentationSlide {
  /// Constructs a [PresentationSlide] widget.
  ///
  /// [slideWidget] is the widget that represents the content of the slide.
  ///
  /// [animationSteps] is the number of times a slide can be clicked
  /// before switching to the next slide in the presentation.
  /// Default value is 1.
  ///
  /// [title] is an optional parameter that represents the slide's title
  /// in the menu. If no title is provided, it will default to `Slide-{index}`.
  const PresentationSlide({
    required this.slideWidget,
    this.animationSteps = 1,
    this.title,
  });

  /// `slideWidget` is the widget that will be used as slide
  final Widget slideWidget;

  /// Represents the current step of the animation in the presentation.
  /// It determines the number of times a slide can be clicked before
  /// switching to the next slide in the enum. By default, one click
  /// on a slide will directly switch to the next slide, sicne `animationSteps`
  /// is set to 1.
  ///
  /// The `animationIndex` property, in combination with the `animationSteps`
  /// property of `presentationController`, indicates which item will be
  /// animated/shown next during the presentation.
  ///
  /// It keeps track of the progress of the animation, indicating the current
  /// step in the sequence.
  ///
  /// An example usage can be seen in the `DownsidesSlide`.
  /// The enum member `PagesOfPresentation.downsides` has 6 `animationSteps`.
  /// Clicking on the slide increments the `animationIndex` by one.
  ///
  /// Example:
  /// - Downsides title appears: `animationIndex` is 0.
  /// - Really bad subtitle appears: `animationIndex` is 1.
  /// - Annoying bullet point appears: `animationIndex` is 2.
  /// - Boring bullet point appears: `animationIndex` is 3.
  /// - Lazy bullet point appears: `animationIndex` is 4.
  /// - It's not Flutter bullet point appears: `animationIndex` is 5.
  /// - When `animationIndex` reaches 6, it switches to the next slide.
  final int animationSteps;

  /// `title` is optional, since it will only be seen on the Menu
  /// (which can be opened using the `M` key btw).
  /// If no title is set it will default to `Slide-{index}` as its title.
  final String? title;
}
