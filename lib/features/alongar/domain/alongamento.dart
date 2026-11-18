/// Desenho usado para ilustrar cada alongamento.
///
/// É só um identificador. Quem decide como desenhar (ícone, imagem, Lottie)
/// é a camada de apresentação, para o domínio não depender do Flutter.
enum Ilustracao { pescoco, ombros, coluna, punhos }

/// Um movimento do guia de alongamentos, feito sentado.
class Alongamento {
  const Alongamento({
    required this.titulo,
    required this.foco,
    required this.descricao,
    required this.ilustracao,
  });

  final String titulo;
  final String foco;
  final String descricao;
  final Ilustracao ilustracao;
}
