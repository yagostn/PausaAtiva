import '../domain/alongamento.dart';

/// Conteúdo do guia, distribuído com o aplicativo (issue #30).
///
/// São quatro movimentos sentados, sem sair da cadeira. Não há cadastro de
/// exercício pelo usuário, nem vídeo, nem "levantar e caminhar".
const List<Alongamento> alongamentosEstaticos = [
  Alongamento(
    titulo: 'Pescoço lateral',
    foco: 'Pescoço e ombros',
    descricao:
        'Incline a cabeça devagar para o lado direito. Mantenha os ombros '
        'baixos, relaxados e longe das orelhas.',
    ilustracao: Ilustracao.pescoco,
  ),
  Alongamento(
    titulo: 'Elevação de ombros',
    foco: 'Ombros',
    descricao:
        'Suba os ombros em direção às orelhas, segure 2 segundos e solte '
        'devagar, no ritmo da respiração.',
    ilustracao: Ilustracao.ombros,
  ),
  Alongamento(
    titulo: 'Inclinação da coluna',
    foco: 'Coluna e lombar',
    descricao:
        'Com os braços acima da cabeça, incline o tronco para o lado. '
        'Mantenha o quadril firme no assento da cadeira.',
    ilustracao: Ilustracao.coluna,
  ),
  Alongamento(
    titulo: 'Punhos e antebraços',
    foco: 'Punhos e antebraços',
    descricao:
        'Com os braços estendidos, movimente os punhos para cima e para '
        'baixo, sem forçar. Ideal para quem digita muito.',
    ilustracao: Ilustracao.punhos,
  ),
];
