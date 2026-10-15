import '../models/plant.dart';

const categories = ['Todas', 'Interior', 'Exterior', 'Suculentas'];

const plants = <Plant>[
  Plant(
    name: 'Monstera',
    category: 'Interior',
    description: 'Hojas grandes y decorativas.',
    details: 'La Monstera deliciosa es ideal para sala u oficina. Crece rápido y purifica el ambiente.',
    image: 'https://picsum.photos/seed/monstera/800/600',
    price: 350,
    rating: 4.8,
    care: 'Riego cada 7 días',
  ),
  Plant(
    name: 'Lavanda',
    category: 'Exterior',
    description: 'Aromática, atrae polinizadores.',
    details: 'Necesita pleno sol y poco riego. Perfecta para jardines y macetas grandes.',
    image: 'https://picsum.photos/seed/lavanda/800/600',
    price: 120,
    rating: 4.5,
    care: 'Riego cada 5 días',
  ),
  Plant(
    name: 'Echeveria',
    category: 'Suculentas',
    description: 'Roseta compacta y resistente.',
    details: 'Almacena agua en sus hojas. Muy fácil de mantener, ideal para principiantes.',
    image: 'https://picsum.photos/seed/echeveria/800/600',
    price: 60,
    rating: 4.9,
    care: 'Riego cada 15 días',
  ),
  Plant(
    name: 'Helecho',
    category: 'Interior',
    description: 'Follaje suave y frondoso.',
    details: 'Prefiere humedad y luz indirecta. Excelente para baños y rincones sombreados.',
    image: 'https://picsum.photos/seed/helecho/800/600',
    price: 90,
    rating: 4.2,
    care: 'Riego cada 3 días',
  ),
];