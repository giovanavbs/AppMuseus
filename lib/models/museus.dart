import 'expo.dart';

class Museu {
  String img;
  String nome;
  String data;
  String descri;
  String adicional;
  String urldireto; // se der merda com a latitude/longitude atributo pra passar o link direto
  String horario;
  double latitude;  
  double longitude; 
  List<Expo> expos;

  Museu({
    required this.img,
    required this.nome,
    required this.data,
    required this.descri,
    required this.adicional,
    required this.urldireto,
    required this.horario,
    required this.latitude,   
    required this.longitude,  
    required this.expos,
  });
}

final List<Museu> museu = [
  Museu(
    img: "images/masp.jpg",
    nome: "Masp",
    data: "sábado, 17 de agosto 2024",
    descri: "lugar pika",
    adicional: "adicional: sp pai",
    urldireto: "",
    horario: "08:00 às 17:00",
    latitude: -23.550520,   
    longitude: -46.633308,  
    expos: [
      const Expo(
        "FRANCIS BACON: A BELEZA DA CARNE",
        'O pintor irlandês Francis Bacon (1909-1992) foi um dos artistas mais extraordinários do século 20, e esta é a primeira exposição individual no Brasil dedicada a sua obra. Ao criar um conjunto de pinturas tão radical quanto arrebatador, o artista revolucionou o modo de pintar a figura humana.',
        'FRANCIS BACON',
        'FRANCIS.png'
      ),
      const Expo(
        'ACERVO EM TRANSFORMAÇÃO',
        'Acervo em transformação é o título da exposição de longa duração da coleção do MASP. As obras são instaladas nos cavaletes de cristal — placas de vidro encaixadas em blocos de concreto — que ficam dispostos em fileiras sem divisórias na sala ampla do segundo andar do museu.',
        'Sem artista definido',
        'acervo1.jpg'
      ),
    ]
  ),
  Museu(
    img: "images/museucatavento.jpg",
    nome: "Museu Catavento",
    data: "sábado, 17 de agosto 2024",
    descri: "lugar pika",
    adicional: "adicional: sp pai",
    urldireto: "",
    horario: "08:00 às 17:00",
    latitude: -23.550520,   
    longitude: -46.633308,  
    expos: [
       const Expo(
        "A ORIGEM DA VIDA",
        'Como surgiu e qual é o seu lugar entre os seres vivos?',
        'Sem autor definido',
        'origem.jpg'
      ),
      const Expo(
        'VIDA NO OCEANO',
        'ANIMAIS NO OCEANO: O que você vê parece plantas, mas são animais.',
        'Sem autor definido',
        'OCEANO.jpeg'
      ),
    ]
  ),
  Museu(
    img: "images/museufavelas.jpg",
    nome: "Museu das Favelas",
    data: "sábado, 17 de agosto 2024",
    descri: "lugar pika",
    adicional: "adicional: sp pai",
    urldireto: "",
    horario: "08:00 às 17:00",
    latitude: -23.550520,   
    longitude: -46.633308,  
    expos: [
      const Expo(
        "FAVELA-RAIZ",
        'FAVELA-RAIZ é uma ocupação-manifesto, composta de cinco partes – três internas e duas externas – que nos levam aos fundamentos da formação da identidade das pessoas que habitam esses territórios: a ancestralidade, as mulheres, a força do trabalho e os abrigos materiais e afetivos.',
        'A obra é composta por diversos autores e colaboradores',
        'favelaraiz.jpg'
      ),
      const Expo(
        'RAP EM QUADRINHOS',
        'O Museu das Favelas e Ação Educativa apresentam a exposição “Rap em Quadrinhos”. A exposição surgiu através colaboração entre o ilustrador Wagner Loud e o Youtuber Løad, com o propósito de prestar homenagem à algumas personalidades do rap nacional, retratando-as como renomados super-heróis e super-heroínas das histórias em quadrinhos. Ao todo, são 19 homenageados, habilmente representados como ícones dentro do vasto universo dos quadrinhos.',
        'Wagner Loud',
        'RAP.jpg'
      )
    ]
  ),
  Museu(
    img: "images/MAB.jpeg",
    nome: "MAB",
    data: "sábado, 17 de agosto 2024",
    descri: "lugar pika",
    adicional: "adicional: sp pai",
    urldireto: "",
    horario: "08:00 às 17:00",
    latitude: -23.550520,   
    longitude: -46.633308,   
    expos: [
      const Expo(
        "HISTÓRIA DA BÍBLIA",
        'Nesta seção, é possível conhecer o processo de escrita, compilação e tradução da Bíblia. Em cada letra da palavra BÍBLIA, são expostos materiais que foram utilizados para a escrita da Bíblia. No centro do espaço, está em exposição uma das Bíblias impressas mais antigas da história: trata-se de uma Vulgata Latina de 1528.',
        'Sem autor definido',
        'historia.jpg'
      ),
      const Expo(
        'JARDIM DA BÍBLIA',
        'Um dos pontos mais surpreendentes da visitação ao MAB é o Jardim da Bíblia. No pátio externo foi construído um jardim com 17 espécies de árvores mencionadas na Bíblia – cedro, oliveira, tamareira, videira, romeira etc. - distribuídas de forma paisagística e ornamental. Entre as árvores, plantas bíblicas como o joio, o trigo, o papiro, entre outras, foram espalhadas.',
        'Sem artista definido',
        'jardim.jpg'
      )
    ]
  ),
];
