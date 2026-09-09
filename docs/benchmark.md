# Benchmark — PausaAtiva

## Introdução

Esta análise examina três soluções existentes relacionadas ao problema central do PausaAtiva: incentivar pausas ativas durante a jornada de trabalho e prevenir os impactos do sedentarismo prolongado. As ferramentas foram escolhidas por representarem abordagens distintas — dois apps mobile (Android/iOS) e um software desktop —, o que permite mapear o que funciona, o que afasta o usuário e o que ainda está em aberto nesse mercado.

---

## Solução 1 — Stretchly

**Plataforma:** Desktop (Windows, macOS, Linux)  
**Modelo:** Gratuito e open-source  
**Disponível em:** [hovancik.net/stretchly](https://hovancik.net/stretchly) · [AlternativeTo](https://alternativeto.net/software/stretchly/about/) · [Ghacks](https://www.ghacks.net/2021/04/26/stretchly-is-an-open-source-program-that-reminds-you-to-take-a-break-at-regular-intervals/) · [Softpedia](https://mac.softpedia.com/get/Utilities/stretchly.shtml)

### Principais Funcionalidades

- Dois tipos de pausa: microbreak (20 segundos a cada 10 minutos) e long break (5 minutos a cada 30 minutos), ambos configuráveis
- Exibe dicas de alongamento e exercícios oculares durante as pausas
- Modo "strict" que impede pular ou adiar o intervalo
- Aviso antecipado antes de cada pausa (10 segundos antes do microbreak, 30 segundos antes do long break)
- Modo "Não perturbe" que suspende os lembretes temporariamente
- Roda na bandeja do sistema em segundo plano
- Suporte a temas visuais e sons configuráveis

### Pontos Positivos

- Configuração granular de intervalos e durações, adaptável a diferentes rotinas
- Aviso prévio antes das pausas é um diferencial que evita interrupções abruptas
- Completamente gratuito e sem coleta de dados
- Ampla compatibilidade de plataformas

### Pontos Negativos

- **Não tem versão mobile:** o trabalhador em home office que usa o celular como segundo dispositivo não é atendido
- O **modo strict pode ser agressivo** no ambiente profissional — bloquear a tela durante uma reunião ou apresentação é constrangedor
- Interface construída com Electron, o que resulta em um app desktop pesado para uma função relativamente simples
- Não possui histórico ou relatório de pausas realizadas — o usuário não consegue acompanhar sua consistência ao longo da semana
- Dicas de alongamento são textos genéricos, sem guia visual ou categorização por zona do corpo

### Aspectos de Interface e Experiência

A tela de pausa ocupa boa parte do monitor com uma janela de cor suave e um texto de instrução. A abordagem é funcional, mas visualmente pouco refinada. Em ambientes de trabalho compartilhado, a janela que aparece no centro da tela é visível para quem passa por perto, o que vai contra o princípio de discrição que o PausaAtiva prioriza. O modo "Não perturbe" existe, mas sua ativação não é imediata nem intuitiva para usuários casuais.

### O que pode ser aproveitado no PausaAtiva

- O conceito de **aviso antecipado** antes da pausa é valioso: o usuário termina o pensamento antes de ser interrompido
- A separação entre pausa curta e pausa longa inspira os intervalos configuráveis do PausaAtiva (30, 45, 60 ou 90 minutos)
- A opção de suspender os lembretes temporariamente corresponde à funcionalidade de adiar o lembrete já prevista no projeto

### O que precisa ser melhorado

- O PausaAtiva precisa existir **no celular, onde o trabalhador já está**, em vez de exigir um programa instalado no computador
- O histórico e o relatório semanal do PausaAtiva preenchem uma lacuna real que o Stretchly deixa em aberto
- As notificações precisam ser verdadeiramente discretas por padrão, sem bloquear tela nem serem visíveis para terceiros

---

## Solução 2 — Stand Up! The Work Break Timer

**Plataforma:** iOS (iPhone e iPad)  
**Modelo:** Gratuito com compra única para desbloquear tons de alarme adicionais  
**Disponível em:** [App Store](https://apps.apple.com/us/app/stand-up-the-work-break-timer/id828244687) · [Apple Store UK](https://apps.apple.com/gb/app/stand-up-the-work-break-timer/id828244687)

### Principais Funcionalidades

- Timer de pausas configurável em incrementos de 5 minutos, de 5 minutos a 2 horas
- Opção de cronometrar o tempo em pé após o lembrete
- Histórico de 7 dias com visualização do desempenho
- Widget para ver o tempo até o próximo lembrete sem abrir o app
- Notificações interativas: possível confirmar a pausa direto da tela de bloqueio
- Opção de limitar os lembretes a uma localização específica (geofencing para o escritório)
- Vários tons de alarme disponíveis, incluindo opção aleatória
- Sem rastreamento de produtividade, sem métricas de culpa

### Pontos Positivos

- Interface extremamente limpa e com curva de aprendizado praticamente zero
- O widget é um acesso rápido real: o usuário sabe quando é a próxima pausa sem abrir o app
- A filosofia declarada do app — "não te microgerenciamos, não te fazemos sentir culpado" — está alinhada com o tom do PausaAtiva
- Notificações interativas na tela de bloqueio reduzem o atrito para confirmar a pausa

### Pontos Negativos

- **Disponível apenas para iOS:** usuários Android, que representam a maior fatia do mercado brasileiro, ficam de fora
- **Não oferece guia de alongamentos:** o lembrete avisa para levantar, mas não orienta o que fazer durante a pausa
- Sem relatório semanal ou meta configurável — o histórico de 7 dias é superficial e não gera reflexão
- Tons de alarme podem ser altos e inadequados para ambientes de escritório compartilhado; o padrão não é silencioso
- Não há configuração de horário de trabalho ou dias ativos, então o app pode enviar lembretes fora do expediente

### Aspectos de Interface e Experiência

O Stand Up! aposta em uma tela principal com poucas informações: um contador regressivo até a próxima pausa e um cabeçalho de status. O design é minimalista e a identidade visual usa cores vibrantes (amarelo como cor primária). A experiência funciona bem para quem quer apenas um lembrete periódico, mas não sustenta um hábito mais completo, pois encerra a sua função no toque: avisa, mas não conduz a pausa.

### O que pode ser aproveitado no PausaAtiva

- A **tela principal centrada no timer** com contagem regressiva visível é um modelo de foco que o PausaAtiva deve seguir
- A notificação interativa que confirma a pausa diretamente da tela de bloqueio reduz interações desnecessárias
- O princípio de não gerar culpa por pausas perdidas está explicitamente alinhado com o comportamento descrito no estudo de caso

### O que precisa ser melhorado

- O PausaAtiva precisa estar disponível para **Android**, plataforma dominante no Brasil
- Guia de alongamentos com exercícios categorizados por zona do corpo (pescoço, lombar, punhos) é um diferencial concreto que o Stand Up! não entrega
- Configuração de horário de trabalho e dias ativos é essencial para que os lembretes não apareçam fora do expediente

---

## Solução 3 — Moova (anteriormente StretchMinder)

**Plataforma:** Android e iOS  
**Modelo:** Gratuito com assinatura premium (Moova Pro)  
**Disponível em:** [Google Play](https://play.google.com/store/apps/details?id=app.stretchminder.android) · [App Store](https://apps.apple.com/us/app/moova-movement-break-reminder/id1518522560) · [getmoova.app](https://getmoova.app)

### Principais Funcionalidades

- Lembretes de pausa horários configuráveis para levantar, alongar, respirar e caminhar
- Biblioteca de rotinas guiadas de movimento com duração de aproximadamente 3 minutos, executáveis no próprio posto de trabalho
- Rotinas categorizadas por tipo de atividade: alongamento, mobilidade, respiração e caminhada
- Rastreamento de "horas ativas" ao longo do dia com indicador de nível de sedentarismo
- Compatível com Google Fit e Apple Health para integração com dados de saúde
- Mais de 100 mil usuários ativos na plataforma

### Pontos Positivos

- É o concorrente mais próximo do PausaAtiva em proposta: **mobile, com guia de exercícios e lembretes de pausa combinados**
- As rotinas são projetadas para o ambiente de trabalho — exercícios realizáveis na cadeira ou ao lado da mesa, sem equipamento
- Disponível para **Android e iOS**, o que representa a maior parte dos usuários mobile no Brasil
- Integração com plataformas de saúde amplia o contexto dos dados de atividade do usuário

### Pontos Negativos

- **Rastreamento de horas ativas com linguagem de culpa:** atualizações recentes adicionaram um indicador que classifica o usuário como "muito sedentário" ao abrir o app — usuários relatam que isso é desmotivante e vai contra a experiência de bem-estar que o app promete
- **Conteúdo premium por assinatura:** as rotinas mais completas ficam atrás de paywall, o que fragmenta a experiência para quem não assina
- Não há configuração de horário de trabalho ou dias da semana ativos — o app pode enviar lembretes fora do expediente
- Sem relatório semanal ou meta configurável pelo usuário: o acompanhamento de progresso é limitado ao histórico de horas ativas, não ao número de pausas realizadas
- A variedade de tipos de pausa (caminhar, respirar, meditar) pode dispersar o foco do usuário que quer apenas alongamentos ergonômicos rápidos

### Aspectos de Interface e Experiência

O Moova tem uma interface moderna e com identidade visual bem definida, com cards de rotina e categorias visuais claras. A tela principal, porém, exibe o indicador de sedentarismo de forma proeminente, o que pode criar pressão negativa logo na abertura do app. As rotinas guiadas são apresentadas com instruções claras e contagem regressiva por exercício, o que é positivo. O tom geral tende mais para fitness e bem-estar amplo do que para a discrição e o foco ergonômico no trabalho que o PausaAtiva prioriza.

### O que pode ser aproveitado no PausaAtiva

- O modelo de **rotinas guiadas com cronômetro por exercício** é uma referência direta para o guia de alongamentos do PausaAtiva
- A ideia de categorizar exercícios por tipo confirma que o usuário se beneficia de escolha contextual — no PausaAtiva, essa categorização será por zona de dor (pescoço, lombar, punhos), conforme identificado na pesquisa
- A disponibilidade em **Android e iOS** valida que o mercado mobile é o espaço certo para esse tipo de solução

### O que precisa ser melhorado

- O PausaAtiva deve **evitar linguagem de culpa ou julgamento** sobre o comportamento do usuário — recusar uma pausa é legítimo e não deve ser registrado como falha
- A configuração de **horário de trabalho e dias ativos** é essencial para que o lembrete não apareça fora do expediente, lacuna que o Moova não preenche
- O foco do PausaAtiva é **ergonomia no trabalho**, não fitness geral: sem gamificação forçada, sem métricas de sedentarismo expostas na tela inicial

---

## Conclusão: O que o PausaAtiva poderá fazer de diferente ou melhor?

A análise das três soluções revela que o mercado ainda não oferece um app que combine, de forma equilibrada, todos os elementos que o trabalhador sentado precisa: **lembrete discreto, guia de alongamento ergonômico, histórico de pausas, privacidade total e configuração da jornada** — tudo isso no celular Android.

O Moova é o concorrente mais direto, mas erra ao expor métricas de sedentarismo com linguagem de julgamento e ao travar conteúdo essencial por assinatura. O Stand Up! acerta no tom, mas se limita ao iOS e não guia o alongamento. O Stretchly é referência em configuração, mas existe apenas no desktop.

O PausaAtiva poderá se diferenciar nos seguintes pontos:

1. **Android-first com notificações verdadeiramente discretas por padrão.** Vibração silenciosa como padrão, sem bloqueio de tela, projetado para o contexto de escritório compartilhado onde o celular está na mesa ao lado do teclado.

2. **Guia visual de alongamentos categorizado por zona de dor.** Conforme identificado na pesquisa, 70% das queixas se concentram em pescoço, lombar e punhos. O Stand Up! avisa para levantar sem orientar o que fazer; o Moova oferece rotinas variadas, mas sem foco ergonômico específico. O PausaAtiva conduz a pausa do início ao fim com sequências de até 3 minutos organizadas por região do corpo.

3. **Sem linguagem de culpa.** O Moova classifica o usuário como "muito sedentário" na tela inicial. O PausaAtiva trata a pausa ignorada como resultado normal, não como falha — o lembrete seguinte chega no próximo ciclo sem penalidade nem registro negativo.

4. **Relatório semanal e meta configurável.** O Stretchly não registra nada; o Stand Up! exibe um histórico superficial de 7 dias; o Moova foca em horas ativas, não em pausas realizadas. O PausaAtiva fecha o ciclo de adesão com gráfico semanal, tempo total de pausas e exportação em PDF por iniciativa do próprio usuário.

5. **Configuração da jornada de trabalho.** Nenhum dos três concorrentes permite definir horário de início, fim e dias ativos da semana. O PausaAtiva não envia lembretes fora do expediente — o que é um requisito básico de confiança no produto.

6. **Funcionamento offline e timer persistente.** O ciclo timer–lembrete–registro funciona localmente, sem depender de servidor, garantindo que a pausa não se perca por queda de conexão.

---

## Fontes consultadas

**Stretchly**
- [alternativeto.net/software/stretchly/about](https://alternativeto.net/software/stretchly/about/) — visão geral de funcionalidades
- [ghacks.net — Stretchly open-source break reminder](https://www.ghacks.net/2021/04/26/stretchly-is-an-open-source-program-that-reminds-you-to-take-a-break-at-regular-intervals/) — análise de funcionalidades e configurações padrão
- [softpedia.com — Stretchly (Mac)](https://mac.softpedia.com/get/Utilities/stretchly.shtml) — descrição de tipos de pausa
- [sitapp.app — Stretchly vs SitApp](https://sitapp.app/blog/sitapp-vs-stretchly) — comparativo com análise crítica
- [filecroco.com — Stretchly download](https://www.filecroco.com/download-stretchly/) — comportamento de aviso antecipado

**Stand Up! The Work Break Timer**
- [apps.apple.com — Stand Up! (US)](https://apps.apple.com/us/app/stand-up-the-work-break-timer/id828244687) — descrição oficial e avaliações
- [apps.apple.com — Stand Up! (UK/NL)](https://apps.apple.com/nl/app/stand-up-the-work-break-timer/id828244687?l=en-GB) — listagem completa de funcionalidades

**Moova (anteriormente StretchMinder)**
- [play.google.com — Moova Android](https://play.google.com/store/apps/details?id=app.stretchminder.android) — descrição oficial na Google Play
- [apps.apple.com — Moova iOS](https://apps.apple.com/us/app/moova-movement-break-reminder/id1518522560) — descrição oficial na App Store e avaliações de usuários
- [getmoova.app](https://getmoova.app) — site oficial com descrição do produto
- [justuseapp.com — Moova reviews](https://justuseapp.com/en/app/1518522560/stretchminder-stand-up-move/reviews) — avaliações de usuários e análise de experiência
