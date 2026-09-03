# ATIVIDADE 01 — ANÁLISE DO ESTUDO DE CASO

## Projeto: PausaAtiva

Disciplina: Programação para Dispositivos Móveis
Projeto: PausaAtiva
Integrantes: Antonio Henrique, Caio Machado, João Vitor Mendonça, João Pedro Oliveira e Yago Santana.

O PausaAtiva é um aplicativo mobile voltado a trabalhadores que passam longos períodos sentados. A proposta é incentivar pequenas pausas ao longo da jornada, orientar alongamentos rápidos e ajudar na construção de hábitos de postura e ergonomia. A solução foi pensada para ser simples e discreta o suficiente para caber no ambiente profissional.

---

## 2. Análise do projeto

### 2.1 Problema

**Qual problema o aplicativo pretende ajudar a solucionar?**

O estudo de caso descreve um ciclo que se repete na rotina de quem trabalha sentado: muitas horas na cadeira, poucas pausas, postura inadequada, sobrecarga física e nenhum lembrete durante o expediente. O PausaAtiva não se propõe a tratar doença ocupacional. Ele atua antes disso, no momento em que o hábito falha, quando a pessoa segue na tarefa até o corpo reclamar porque nada no fluxo de trabalho a interrompe de forma aceitável.

O conjunto de funcionalidades citado no caso (timer, notificação discreta, alongamento guiado, configuração da jornada, histórico e relatório) indica que a dificuldade real está na adesão. Conteúdo sobre ergonomia já existe de sobra na internet, mas isso não faz ninguém levantar da cadeira. Um lembrete invasivo tende a ser desativado pelo usuário. Um alongamento longo, ou que exija sair do posto, acaba sendo adiado. E um aplicativo que acompanhe produtividade deixa de ser ferramenta de saúde e passa a funcionar como instrumento de controle.

**Por que esse problema é relevante?**

A relevância vem de três implicações que aparecem no próprio material do grupo.

A primeira é a saúde durante a jornada. Ficar horas sentado, com pouca variação de postura, está associado a desconforto musculoesquelético. O posicionamento escolhido para o app ("o colega de trabalho que te lembra de levantar da cadeira antes que sua coluna grite") mostra que a pausa é tratada como prevenção do dia a dia, e não como treino.

A segunda é o contexto profissional. O trabalhador usa o celular no escritório, em reunião ou em casa com a câmera ligada. Um alarme alto ou uma tela chamativa não representam apenas ruído de interface, e sim constrangimento, o que costuma levar ao abandono do aplicativo. Por isso o caso insiste em notificação discreta e proíbe qualquer monitoramento de aplicativos, teclado, navegação, capturas de tela, produtividade e conteúdo acessado.

A terceira é a continuidade de uso. O fluxo Login, Configuração, Timer, notificação, alongamento e registro só se sustenta se o timer e os dados essenciais funcionarem sem internet, conforme a abordagem offline-first prevista no projeto. No trabalho real, rede instável não pode custar o intervalo do usuário.

**Qual é a principal necessidade que a solução deverá atender?**

A necessidade central é ser lembrado de pausar e conseguir cumprir essa pausa em poucos minutos, sem expor o trabalhador e sem interromper o trabalho de forma agressiva. As demais funções previstas no caso, como as dicas na tela do timer, o guia visual de alongamentos, a meta semanal e a exportação em PDF, servem para sustentar esse hábito.

Para o desenvolvimento, isso significa priorizar o ciclo timer, lembrete, alongamento curto e registro, mantendo tom discreto e dados sob controle do usuário. Sistema de RH, ranking e qualquer forma de vigilância ficam de fora, como o próprio roadmap indica ao deixá-los para versões futuras.

### 2.2 Público e usuários

O estudo de caso apresenta um público principal, o trabalhador que passa longos períodos sentado, e um público institucional (empresa e RH) que aparece apenas no roadmap e não é usuário do MVP. A análise a seguir interpreta esses públicos em vez de apenas repeti-los.

#### Trabalhador em jornada sentada (usuário principal)

**Quem é:** profissional que passa a maior parte do expediente em cadeira e tela, seja em escritório, open space ou home office. É quem faz login, configura os intervalos e usa as quatro telas previstas (Timer, Alongamentos, Pausas e Relatório).

**Relação com o aplicativo:** ele é o dono da experiência. O app existe para atendê-lo, não para atender a chefia. É ele quem configura a própria jornada, recebe o lembrete e decide se cumpre a pausa. O histórico e o relatório são dados pessoais dele.

**Necessidades:** receber o lembrete no momento certo; ter uma pausa curta o bastante para caber entre duas tarefas; contar com alongamentos que possam ser feitos no posto de trabalho; acompanhar se as pausas realmente aconteceram; e ter a garantia de que o aplicativo não será usado para fiscalizá-lo.

**Situação de uso:** durante o expediente, quase sempre com a atenção voltada para a tarefa principal e o celular ao lado. A interação precisa ser rápida, o suficiente para iniciar ou pausar o timer, seguir um exercício e dispensar o lembrete. Em mesa compartilhada, som e animações chamativas atrapalham a adoção.

#### Variação do mesmo público: escritório compartilhado e home office

Não se trata de dois aplicativos, mas de duas condições de uso que mudam decisões de projeto. A leitura abaixo é uma interpretação do grupo a partir das opções de lembrete e das restrições de privacidade descritas no caso.

| | Escritório / open space | Home office |
|---|---|---|
| Pressão social | Alta, já que o colega ouve o alarme e vê a tela | Menor, mas ainda existe em reunião online |
| Tipo de lembrete | Notificação silenciosa ou vibração suave tendem a funcionar melhor | Som discreto pode ser aceitável |
| Alongamento | Precisa caber na cadeira, sem chamar atenção | Há um pouco mais de espaço, mas segue curto |
| Privacidade | Relatório e meta não devem saltar na tela principal | Mesma regra, e o app não observa o que a pessoa faz no PC |

Essa diferença ajuda a explicar decisões que já constam no caso, como a notificação discreta, as quatro telas enxutas e a proibição de monitorar produtividade.

#### Empresa e RH (público citado no roadmap, fora do MVP)

**Quem é:** organização que, em versões futuras, poderia contar com gestão de funcionários, dashboard e relatórios corporativos anônimos.

**Relação com o aplicativo hoje:** indireta. No MVP o app é individual, com conta do trabalhador, dados pessoais e timer local. Tratar o RH como usuário nesta versão inverteria a proposta de valor e entraria em conflito com as restrições de privacidade do projeto.

**Necessidade futura, caso venha a existir:** acompanhar a adesão às pausas de forma agregada e anônima, sem identificar o que cada pessoa faz na máquina.

**Situação de uso:** não é o celular do trabalhador no meio da tarde, e sim um painel consultado depois. Por isso esse público não deve orientar o desenho das quatro telas atuais.

**Implicação para o desenvolvimento:** autenticação, armazenamento e interface devem ser projetados considerando o trabalhador como único usuário da versão 1.0. Qualquer dado além disso, como quais aplicativos ele usa ou quanto produz, está fora do problema e fora do acordo de confiança que o estudo de caso estabelece.