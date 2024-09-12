class Museu {
  String img;
  String nome;
  String data;
  String descri;
  String local;
  String siteUrl;
  String horario;

  Museu({
    required this.img,
    required this.nome,
    required this.data,
    required this.descri,
    required this.local,
    required this.siteUrl,
    required this.horario,
  });
}

final List<Museu> museu = [
  Museu(
    img: "/images/masp.jpg",
    nome: "Masp",
    data: "sábado, 17 de agosto 2024",
    descri:"lugar pika",
    local: "Local: sp pai",
    siteUrl:"",    
    horario: "08:00 às 17:00",
  ),
  Museu(
    img: "/images/museucatavento.jpg",
    nome: "Museu Catavento",
    data: "sábado, 17 de agosto 2024",
    descri:"lugar pika",
    local: "Local: sp pai",
    siteUrl:"",    
    horario: "08:00 às 17:00",
  ),
  Museu(
    img: "/images/museufavelas.jpg",
    nome: "Museu das Favelas",
    data: "sábado, 17 de agosto 2024",
    descri:"lugar pika",
    local: "Local: sp pai",
    siteUrl:"",    
    horario: "08:00 às 17:00",
  ),
  Museu(
    img: "/images/MAB.jpeg",
    nome: "MAB",
    data: "sábado, 17 de agosto 2024",
    descri:"lugar pika",
    local: "Local: sp pai",
    siteUrl:"",    
    horario: "08:00 às 17:00",
  ),

];