/// An enum representing different types of bullets for lists.
enum ListBullets {
  /// Represents a circle bullet •.
  circle('\u2022'),

  /// Represents a big circle bullet ●.
  circleBig('\u25CF'),

  /// Represents a circle outline bullet ◦.
  circleOutline('\u25E6'),

  /// Represents a square bullet ▪.
  square('\u25AA'),

  /// Represents a mini square bullet ∙.
  squareMini('\u2219'),

  /// Represents a triangle bullet ‣.
  triangle('\u2023');

  /// Constructs a ListBullets object with the specified unicode character.
  ///
  /// [uniCode] is the unicode character associated with the bullet.
  const ListBullets(this.uniCode);

  /// The unicode character associated with the bullet.
  final String uniCode;
}
