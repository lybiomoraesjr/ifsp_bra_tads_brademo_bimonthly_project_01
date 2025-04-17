import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/article_card.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> articles = [
    {
      'image': 'https://images.unsplash.com/photo-1636696301991-3e176a6b77dc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'title': 'Ice cream is made with carrageenan ...',
      'description': 'Carragenina é um ingrediente de origem natural extraído de algas marinhas vermelhas, amplamente utilizado na indústria alimentícia, especialmente na produção de sorvetes. \n\nSua principal função é atuar como agente espessante e estabilizante, desempenhando um papel fundamental na melhoria da textura, consistência e estabilidade do produto final. \n\nAo ser incorporada à formulação do sorvete, a carragenina ajuda a garantir que ele permaneça cremoso, homogêneo e com uma textura suave ao longo do tempo, mesmo após longos períodos de armazenamento em baixas temperaturas. \n\nEsse ingrediente natural se destaca por sua capacidade de interagir com as proteínas do leite e outros componentes da mistura, promovendo a formação de uma rede estável que impede a separação de fases. \n\nEssa propriedade é crucial para evitar a liberação de água e a formação de cristais de gelo, um dos principais fatores que comprometem a qualidade sensorial do sorvete. \n\nAo minimizar esse risco, a carragenina assegura uma experiência mais agradável ao paladar, com uma textura rica e uniforme desde a primeira colherada até a última. \n\nAlém disso, a versatilidade da carragenina a torna ideal para aplicações em uma ampla variedade de produtos, tanto lácteos quanto à base de plantas, como sorvetes veganos ou sobremesas congeladas sem lactose. \n\nSua origem natural, derivada de algas marinhas renováveis, também contribui para sua popularidade entre fabricantes preocupados com a sustentabilidade e com a demanda crescente por ingredientes limpos e reconhecíveis por parte dos consumidores. \n\nNo contexto da indústria alimentícia moderna, onde a busca por produtos de alta qualidade e com boa estabilidade durante o transporte e armazenamento é constante, a carragenina se consolida como uma solução eficiente e confiável. \n\nEla não apenas melhora as características físicas e sensoriais dos alimentos congelados, mas também agrega valor ao produto final ao permitir formulações mais estáveis e agradáveis, sem comprometer o perfil nutricional. \n\nPor isso, é considerada um aditivo indispensável para muitos fabricantes que desejam entregar sorvetes premium, consistentes e alinhados com as expectativas do mercado atual.',
      'date': '2023-10-01',
    },
    {
      'image': 'https://as1.ftcdn.net/jpg/01/98/46/60/1000_F_198466056_PCqEL4oinf9DEbHurjpS7BvW2vRmjMhy.jpg',
      'title': 'Is makeup one of your daily esse ...',
      'description': 'Makeup is a cosmetic product used to enhance or alter the appearance of the face and other parts of the body. It has been a part of human culture for centuries, serving as a form of self-expression, confidence booster, and even art. From foundation to lipstick, makeup allows individuals to highlight their features, conceal imperfections, and experiment with different looks. Beyond aesthetics, makeup has also played a role in social and professional settings, empowering individuals to present themselves in ways that align with their personal or cultural identity. Furthermore, makeup has evolved significantly over time, with advancements in technology and formulations leading to products that are more inclusive, sustainable, and versatile. It is not just a tool for beauty but also a medium for creativity and innovation, reflecting the diverse needs and aspirations of people across the globe.',
      'date': '2023-10-02',
    },
    {
      'image': 'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
      'title': 'Coffee is more than just a drink: It\'s ...',
      'description': 'Coffee is a brewed beverage made from roasted coffee beans, which are the seeds of the Coffea plant. It is one of the most popular drinks worldwide, known for its rich flavor and stimulating effects due to caffeine. Beyond being a morning ritual, coffee has become a cultural phenomenon, bringing people together in cafes, fueling creativity, and serving as a companion during long work hours. Its versatility allows it to be enjoyed in various forms, from espresso shots to creamy lattes, making it a beloved staple in diverse cultures and lifestyles. Moreover, coffee has a profound impact on the global economy, supporting millions of farmers and workers in coffee-growing regions. Its role in fostering social connections and inspiring innovation underscores its significance as more than just a beverage, but a symbol of community, resilience, and shared experiences.',
      'date': '2023-10-03',
    },
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5), // Fundo cinza claro
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Home", style: TextStyle(color: Colors.black)),
        centerTitle: false,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                )
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "What are you looking for?",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FilterChip(
                      label: Text("Beauty"),
                      onSelected: (_) {},
                    ),
                    SizedBox(width: 10),
                    FilterChip(
                      label: Text("Fashion"),
                      onSelected: (_) {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFFF5F5F5),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: ListView(
                children: articles.map((article) => ArticleCard(article)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}