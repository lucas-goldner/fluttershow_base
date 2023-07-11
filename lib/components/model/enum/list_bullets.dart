enum ListBullets {
  circle('\u2022'),
  circle_big('\u25CF'),
  circle_outline('\u25E6'),
  square('\u25AA'),
  square_mini('\u2219'),
  triangle('\u2023');

  const ListBullets(this.uniCode);

  final String uniCode;
}
