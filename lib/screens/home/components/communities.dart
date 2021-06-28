class Community {
  String imageUrl;
  String city;
  String country;
  String description;

  Community({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
  });
}


List<Community> communities = [
  Community(
    imageUrl: 'assets/images/buona.png',
    city: 'Buona Vista',
    country: 'The Buona Vista estate is centred around Holland Close, Holland Avenue and Holland Drive. It is close to the Dover and Ghim Moh estates, and Holland Village. It shares its name with North Buona Vista Road and South Buona Vista Road, which together is a hilly winding road that navigates through Kent Ridge.',
    description: '78% match.',
  ),
  Community(
    imageUrl: 'assets/images/tampines.png',
    city: 'Tampines',
    country: 'East',
    description: '66% match.',
  ),
  Community(
    imageUrl: 'assets/images/kallang.png',
    city: 'Kallang',
    country: 'Central',
    description: '55% match.',
  ),
  Community(
    imageUrl: 'assets/images/bishan.png',
    city: 'Bishan',
    country: 'North',
    description: '45% match.',
  ),
  Community(
    imageUrl: 'assets/images/welcomeSG.png',
    city: 'New York City',
    country: 'United States',
    description: 'Visit New York for an amazing and unforgettable adventure.',
  ),
];