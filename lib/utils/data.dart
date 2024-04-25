class ProductData {
  static Set<Map<String, dynamic>> cartData = {};
  static List<Map<String, dynamic>> cartProductData = [];

  static Set<Map<String, dynamic>> favData = {};
  static List<Map<String, dynamic>> favProductData = [];

  static void convertUniiqueData() {
    cartProductData = cartData.toList();
  }

  static void convertData() {
    favProductData = favData.toList();
  }

  static num totalPrice() {
    num sum = 0;
    for (var element in cartProductData) {
      sum = sum + (element['total']);
    }
    return sum;
  }

  static String pdfName = "Dmart";
  static num dis() {
    num dis = 0;
    for (var element in cartProductData) {
      dis = dis + (element['discountPercentages'] * element['count']);
    }
    return dis;
  }

  static num grandTotal() {
    num add = 0;

    add = totalPrice() - dis();

    return add;
  }

  static num end = 0;
  static List<Map<String, dynamic>> allProductsData = <Map<String, dynamic>>[
    {
      'name': 'Fruit Salad',
      'data': [
        {
          "id": 1,
          "title": "Tropical Salad",
          "description":
              "A delightful blend of tropical fruits that will transport you to a paradise island.",
          "price": 15,
          "discountPercentages": 5,
          "rating": 4.5,
          "count": 0,
          "kcl": "150",
          "total": 15,
          "average": "10-15",
          "time": 10,
          "like": false,
          "category": "Hot sale",
          "delivery": 3.50,
          "Ingradients": ["🍎", "🍋", "🍍", "🥥", "🍇"],
          "thumbnail":
              "https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2019/07/Caprese-Salad-main-1.jpg",
          "image": [
            "https://healthyfitnessmeals.com/wp-content/uploa0ds/2022/05/Fruit-salad-recipe-4.jpg",
          ]
        },
        {
          "id": 2,
          "title": "Berry Blast Salad",
          "description": "A burst of freshness with a mix of assorted berries.",
          "price": 12,
          "discountPercentages": 6,
          "rating": 4.7,
          "total": 12,
          "count": 0,
          "kcl": "120",
          "average": "5-10",
          "time": 8,
          "delivery": 3,
          "category": "Hot sale",
          "like": false,
          "Ingradients": ["🍎", "🍋", "🍍", "🥥", "🍇"],
          "thumbnail":
              "https://www.cookingclassy.com/wp-content/uploads/2021/03/cobb-salad-18.jpg",
          "image": [
            "https://www.kathysvegankitchen.com/wp-content/uploads/2020/07/Blackberry-salad-1024x891.jpg",
          ]
        },
      ],
    },
    {
      'name': 'Maxican Salad',
      'data': [
        {
          "id": 1,
          "title": "Caprese Salad",
          "description":
              "A zesty and satisfying salad featuring classic taco flavors with a spicy kick.",
          "price": 16,
          "discountPercentages": 2,
          "rating": 4.9,
          "count": 0,
          "kcl": "220",
          "total": 16,
          "average": "10-15",
          "time": 15,
          "like": false,
          "delivery": 3,
          "Ingradients": ["🍎", "🍋", "🍍", "🥥", "🍇"],
          "thumbnail":
              "https://www.veganfriendly.org.uk/wp-content/uploads/2022/09/high-protein-vegan-salad.jpg",
          "image": [
            "https://example.com/images/spicy_taco_salad_1.jpg",
          ]
        },
        {
          "id": 2,
          "title": "Fiesta Salad",
          "description":
              "A vibrant and flavorful salad inspired by the rich culinary heritage of Mexico.",
          "price": 18,
          "discountPercentages": 8,
          "rating": 4.6,
          "count": 0,
          "kcl": "180",
          "total": 18,
          "average": "10-15",
          "time": 12,
          "delivery": 3.50,
          "like": false,
          "Ingradients": ["🍎", "🍋", "🍍", "🥥", "🍇"],
          "thumbnail":
              "https://eqhct8esjgc.exactdn.com/wp-content/uploads/2020/11/pomegranate-whole-grain-salad-with-dressing-l.jpg?strip=all&lossy=1&resize=600%2C800&ssl=1",
          "image": [
            "https://example.com/images/mexican_fiesta_salad_1.jpg",
          ]
        }
      ],
    },
    {
      'name': 'Greek Salad',
      'data': [
        {
          "id": 1,
          "title": "Greek Salad",
          "description":
              "A refreshing and authentic Greek salad featuring crisp vegetables and tangy feta cheese.",
          "price": 14,
          "discountPercentages": 5,
          "rating": 4.7,
          "total": 14,
          "kcl": "160",
          "count": 0,
          "average": "5-10",
          "time": 10,
          "delivery": 3.50,
          "like": false,
          "Ingradients": ["🍎", "🍋", "🍍", "🥥", "🍇"],
          "thumbnail":
              "https://www.italianbellavita.com/wp-content/uploads/2022/08/739C7136-CBA2-4DDC-8D56-ECA409F69AB9-3-735x735.jpeg",
          "image": [
            "https://example.com/images/classic_greek_salad_1.jpg",
          ]
        },
        {
          "id": 2,
          "title": "Veggie Salad",
          "description":
              "A vibrant salad bursting with Mediterranean flavors, featuring fresh vegetables and olives.",
          "price": 16,
          "discountPercentages": 1,
          "rating": 4.8,
          "kcl": "180",
          "count": 0,
          "total": 16,
          "average": "10-15",
          "time": 12,
          "like": false,
          "delivery": 3.50,
          "Ingradients": ["🍎", "🍋", "🍍", "🥥", "🍇"],
          "thumbnail":
              "https://cdn.nutritioninthekitch.com/wp-content/uploads/2020/05/IMG_6942.jpg",
          "image": [
            "https://example.com/images/mediterranean_veggie_salad_1.jpg",
          ]
        },
      ],
    },
    {
      'name': 'Vegetable Salad',
      'data': [
        {
          "id": 1,
          "title": "Garden Salad",
          "description":
              "A vibrant and nutritious salad made with a variety of fresh garden vegetables.",
          "price": 12,
          "discountPercentages": 9,
          "rating": 4.5,
          "kcl": "120",
          "count": 0,
          "total": 12,
          "average": "5-10",
          "time": 10,
          "delivery": 3.50,
          "like": false,
          "Ingradients": ["🍎", "🍋", "🍍", "🥥", "🍇"],
          "thumbnail":
              "https://garlicsaltandlime.com/wp-content/uploads/2022/07/Tossed-salad.jpg",
          "image": [
            "https://example.com/images/garden_vegetable_salad_1.jpg",
          ]
        },
        {
          "id": 2,
          "title": "Chickpea Salad",
          "description":
              "A hearty and flavorful salad featuring chickpeas, tomatoes, cucumbers, and Mediterranean herbs.",
          "price": 14,
          "discountPercentages": 0,
          "rating": 4.6,
          "kcl": "180",
          "average": "10-15",
          "count": 0,
          "total": 14,
          "time": 12,
          "like": false,
          "delivery": 3.50,
          "Ingradients": ["🍎", "🍋", "🍍", "🥥", "🍇"],
          'thumbnail':
              "https://fitfoodiefinds.com/wp-content/uploads/2020/05/salad-1.jpg",
          "image": [
            "https://example.com/images/mediterranean_chickpea_salad_1.jpg",
          ]
        },
      ],
    },
    {
      'name': 'Italian Salad',
      'data': [
        {
          "id": 10,
          "title": "Caprese Salad",
          "description":
              "A classic Italian salad made with fresh tomatoes, mozzarella cheese, basil, and a drizzle of balsamic glaze.",
          "price": 16,
          "discountPercentages": 2,
          "rating": 4.8,
          "kcl": "150",
          "average": "5-10",
          "total": 16,
          "count": 0,
          "time": 10,
          "like": false,
          "delivery": 3.50,
          "Ingradients": ["🍎", "🍋", "🍍", "🥥", "🍇"],
          "thumbnail":
              "https://www.eatingbirdfood.com/wp-content/uploads/2021/03/avocado-salad-hero.jpg",
          "image": [
            "https://example.com/images/caprese_salad_1.jpg",
          ]
        },
        {
          "id": 11,
          "title": "Panzanella Salad",
          "description":
              "A Tuscan-style salad made with stale bread, tomatoes, cucumbers, onions, and fresh basil, tossed in a tangy vinaigrette.",
          "price": 14,
          "discountPercentages": 4,
          "rating": 4.7,
          "kcl": "170",
          "average": "10-15",
          "count": 0,
          "total": 14,
          "time": 12,
          "like": false,
          "delivery": 3.50,
          "Ingradients": ["🍎", "🍋", "🍍", "🥥", "🍇"],
          "thumbnail":
              "https://www.ambitiouskitchen.com/wp-content/uploads/2023/05/Summer-Strawberry-Spinach-Salad-5.jpg",
          "image": [
            "https://example.com/images/panzanella_salad_1.jpg",
          ]
        },
      ],
    },
  ];
}
