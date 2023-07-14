/// An enum representing different flex units for layout components.
/// An entire slide is made out of 8 flex units.
enum LayoutFlexUnits {
  /// Represents the header component with 2 flex units.
  header(2),

  /// Represents the body component with 5 flex units.
  body(5),

  /// Represents the footer component with 1 flex unit.
  footer(1);

  /// Constructs a LayoutFlexUnits object with the specified
  /// number of flex units.
  ///
  /// [flexUnits] is the number of flex units associated with the component.
  const LayoutFlexUnits(this.flexUnits);

  /// The number of flex units associated with the component.
  final int flexUnits;
}
