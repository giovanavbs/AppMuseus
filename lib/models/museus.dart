import 'expo.dart';

class Museu {
  String img;
  String nome;
  String data;
  String descri;
  String linkSite; // se der merda com a latitude/longitude atributo pra passar o link direto
  String horario;
  double latitude;  
  double longitude; 
  List<Expo> expos;

  Museu({
    required this.img,
    required this.nome,
    required this.data,
    required this.descri,
    required this.linkSite,
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
    data: "Aberto de terça à domingo",
    descri: "Museu de Arte de São Paulo Assis Chateaubriand é um centro cultural e museu de arte brasileiro fundado em 1947 pelo empresário e jornalista paraibano Assis Chateaubriand. Entre os anos de 1947 e 1990, o crítico e marchand italiano Pietro Bardi assumiu a direção do MASP a convite de Chateaubriand.",
    linkSite: "https://masp.org.br/",
    horario: "10:00 às 18:00",
    latitude: -23.561414,   
    longitude: -46.655881,  
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
    data: "Aberto de terça à domingo",
    descri: 'O Museu Catavento é um museu interativo, inaugurado em 2009 com o propósito de se dedicar às ciências e sua divulgação e está localizado no Palácio das Indústrias, em São Paulo, Brasil. O espaço de 12.000 metros quadrados é dividido em 4 seções: "Universo", "Vida", "Engenho" e "Sociedade" e conta com mais de 250 instalações. Voltado ao público jovem, foi fundado pelas secretarias estaduais de cultura e educação, com um investimento de 20 milhões de reais após 14 meses de construção.',
    linkSite: "https://museucatavento.org.br/",
    horario: "09:00 às 16:00",
    latitude: -23.5443881,   
    longitude: -46.6298305, 
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
    data: "Aberto de terça à domingo",
    descri: "O Museu das Favelas é um equipamento da Secretaria da Cultura, Economia e Indústria Criativas do Estado de São Paulo, com sede em São Paulo, e gerido pela organização social de cultura IDG – Instituto de Desenvolvimento e Gestão. O Museu é um ambiente de pesquisa, preservação, produção e comunicação das memórias e potências criativas das favelas brasileiras. Com entrada gratuita e aberto a todos os públicos, propõe uma viva programação cultural e educativa, exposições, Centro de Referência e Biblioteca.",
    linkSite: "https://www.museudasfavelas.org.br/",
    horario: "10:00 às 17:00",
    latitude: -23.5334761,   
    longitude: -46.6475893,  
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
    data: "Aberto de quarta à sexta e aos domingos",
    descri: "O Museu de Arqueologia Bíblica do Centro Universitário Adventista de São Paulo (MAB UNASP) é um equipamento cultural museológico sem fins lucrativos, comunitário, filantrópico e confessional. O MAB insere-se no contexto dos museus universitários, desenvolvendo atividades ligadas ao ensino, pesquisa e extensão, a partir das ciências ligadas à tipologia do acervo do museu: arqueologia, teologia, história, museologia, arte.",
    linkSite: "https://mab.unasp.edu.br/",
    horario: "09:00 às 17:00",
    latitude: -22.5009823,   
    longitude: -47.1680161,   
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
