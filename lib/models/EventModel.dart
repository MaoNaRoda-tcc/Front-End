class EventModel {
  final String link_foto;
  final String titulo;
  final int qtd_curtidas;

  EventModel({
    required this.link_foto,
    required this.titulo,
    required this.qtd_curtidas,
  });

  factory EventModel.fromMap(Map<String, dynamic> json) {
    return EventModel(
      link_foto: json['link_foto'] ?? '',
      titulo: json['titulo'] ?? '',
      qtd_curtidas: json['qtd_curtidas'] is int ? json['qtd_curtidas'] : 0,
    );
  }

  @override
  String toString() {
    return 'EventModel(titulo: $titulo, qtd_curtidas: $qtd_curtidas, link_foto: $link_foto)';
  }
}
