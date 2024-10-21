class PubliModel {
  final String link_foto;
  final String titulo;
  final int qtd_curtidas;
  final String nome_user;

  PubliModel({
    required this.link_foto,
    required this.titulo,
    required this.qtd_curtidas,
    required this.nome_user,

  });

  factory PubliModel.fromMap(Map<String, dynamic> map) {
    return PubliModel(
      link_foto: map['link_foto'],
      titulo: map['titulo'],
      qtd_curtidas: map['qtd_curtidas'],
      nome_user: map['dm_usuario']['nome'],
    );
  }

}
