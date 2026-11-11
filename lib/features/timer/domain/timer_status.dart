enum TimerStatus {
  pronto('Pronto para iniciar'),
  emAndamento('Em andamento'),
  pausado('Pausado');

  const TimerStatus(this.rotulo);
  final String rotulo;
}
