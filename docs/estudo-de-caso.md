# ATIVIDADE 01 — ANÁLISE DO ESTUDO DE CASO

## Projeto: PausaAtiva

*Disciplina:* Programação para Dispositivos Móveis  
*Projeto:* PausaAtiva  
*Integrantes:* Antonio Henrique, Caio Machado, João Vitor Mendonça, João Pedro Oliveira e Yago Santana.

O *PausaAtiva* é um aplicativo mobile voltado a trabalhadores que permanecem longos períodos sentados. Sua proposta é incentivar pequenas pausas durante a jornada, orientar alongamentos rápidos e contribuir para hábitos relacionados à postura e à ergonomia. A solução foi concebida para ser simples, discreta e adequada ao ambiente profissional.

---

## 2. Análise do projeto

### 2.1 Problema

**Qual problema o aplicativo pretende ajudar a solucionar?**

O estudo de caso descreve um ciclo que se repete na jornada de quem trabalha sentado: longos períodos na cadeira, poucas pausas, postura inadequada, sobrecarga física e ausência de lembretes no meio da rotina. O PausaAtiva não trata a doença ocupacional em si. Ele atua no ponto em que o hábito quebra: a pessoa continua na tarefa até o corpo reclamar, porque nada no fluxo de trabalho a interrompe de forma aceitável.

A solução proposta no caso — timer, notificação discreta, alongamento guiado, configuração da jornada, histórico e relatório — deixa claro que o problema de produto é de **adesão**, não de falta de conteúdo ergonômico na internet. Se o lembrete for invasivo, o usuário desliga a notificação. Se o alongamento for longo ou exigir sair do posto, a pausa é adiada. Se o app vigiar produtividade, ele deixa de ser ferramenta de saúde e vira instrumento de controle.

**Por que esse problema é relevante?**

Ele é relevante por três implicações simultâneas, todas presentes no material do grupo:

1. **Saúde na jornada:** permanecer sentado por horas, com pouca variação postural, está associado a desconforto musculoesquelético. O próprio posicionamento do app (“o colega de trabalho que te lembra de levantar da cadeira antes que sua coluna grite”) trata a pausa como prevenção cotidiana, não como exercício de academia.
2. **Contexto profissional:** o trabalhador usa o celular no escritório, em reunião ou em casa com câmera ligada. Um alarme alto ou uma tela chamativa não é só ruído de interface: vira constrangimento e abandono do app. Por isso o caso insiste em notificação discreta e em não monitorar aplicativos, teclado, navegação ou produtividade.
3. **Continuidade de uso:** o fluxo Login → Configuração → Timer → notificação → alongamento → registro só funciona se o timer e os dados essenciais sobrevivem sem internet (offline-first). No trabalho real, rede instável não pode ser desculpa para perder o intervalo.

**Qual é a principal necessidade que a solução deverá atender?**

A necessidade central é **ser lembrado de pausar e conseguir cumprir essa pausa em poucos minutos, sem expor o trabalhador nem interromper de forma agressiva o trabalho**. Tudo o mais no caso (dicas na tela do timer, guia visual, meta semanal, PDF) existe para sustentar esse hábito. Implicação para o desenvolvimento: priorizar o ciclo timer–lembrete–alongamento curto–registro, com tom discreto e dados sob controle do usuário — e não um sistema de RH, ranking ou vigilância, que o próprio roadmap deixa para versões futuras.

### 2.2 Público e usuários

O estudo de caso aponta um público principal — o trabalhador que permanece longos períodos sentado — e, no roadmap, um público institucional (empresa / RH) que **não** é usuário do MVP. A análise abaixo interpreta esses públicos em vez de apenas listá-los.

#### Trabalhador em jornada sentada (usuário principal)

- **Quem é:** profissional que passa a maior parte do expediente em cadeira e tela (escritório, open space ou home office). É quem faz login, configura intervalos e usa as quatro telas (Timer, Alongamentos, Pausas, Relatório).
- **Relação com o aplicativo:** é o dono da experiência. O app existe para ele, não para a chefia. Ele configura a própria jornada, recebe o lembrete e decide se cumpre a pausa. Os dados de histórico e relatório são pessoais.
- **Necessidades:** lembrete no momento certo; pausa curta o suficiente para caber entre tarefas; alongamento que dá para fazer no posto de trabalho; acompanhar se as pausas realmente aconteceram; garantia de que o app não vira ferramenta de fiscalização.
- **Situação de uso:** durante o expediente, muitas vezes com atenção na tarefa principal e o celular ao lado. A interação precisa ser rápida (iniciar/pausar o timer, seguir um exercício, dispensar o lembrete). Em mesa compartilhada, som e animação chamativa prejudicam a adoção.

#### Variação do mesmo público: escritório compartilhado versus home office

Não são dois aplicativos, mas duas condições que mudam o projeto:

| | Escritório / open space | Home office |
|---|---|---|
| Pressão social | Alta: colega ouve o alarme e vê a tela | Menor, mas há reunião online |
| Tipo de lembrete | Silencioso ou vibração como padrão | Som discreto pode ser aceitável |
| Alongamento | Precisa caber na cadeira, sem “espetáculo” | Um pouco mais de espaço, ainda curto |
| Privacidade | Relatório e meta não devem saltar na tela principal | Mesma regra: o app não monitora o que a pessoa faz no PC |

Essa distinção explica decisões já citadas no caso: notificação discreta, quatro telas enxutas e a proibição explícita de monitorar produtividade.

#### Empresa e RH (público citado no roadmap, fora do MVP)

- **Quem é:** organização que, em versões futuras, poderia ter gestão de funcionários, dashboard e relatórios corporativos anônimos.
- **Relação com o aplicativo hoje:** indireta. No MVP o app é individual (conta do trabalhador, dados da pessoa, timer local). Tratar RH como usuário agora invertiria a proposta de valor e chocaria com a restrição de privacidade.
- **Necessidade futura (se existir):** ver adesão a pausas de forma agregada e anônima, sem identificar o que cada um faz na máquina.
- **Situação de uso:** não é o celular do trabalhador no meio da tarde; é um painel posterior. Por isso não deve guiar as quatro telas atuais.

**Implicação para o desenvolvimento:** projetar autenticação, armazenamento e interface para o trabalhador como único usuário da versão 1.0. Qualquer dado extra (quais apps está usando, quanto produz) está fora do problema e fora do contrato de confiança descrito no estudo de caso.
