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

---
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

---
### 2.3 Contexto de uso

O PausaAtiva não é aberto no sofá, com tempo e atenção livres. Ele entra no expediente: a pessoa está na tarefa, o celular está ao lado do teclado e qualquer interação disputa segundos com o trabalho. O contexto de uso, portanto, é o que decide se o ciclo descrito no caso (timer → lembrete → alongamento → registro) vira hábito ou vira app desinstalado.

**Onde e quando o aplicativo é usado**

O uso ocorre **durante a jornada**, não depois dela. Três recortes se repetem no material do grupo:

1. **Posto de trabalho com tela principal no computador.** O celular é secundário. Abrir o app, iniciar o timer e voltar à tarefa precisa caber em poucos toques. A tela do Timer é a “casa” do produto: contagem, próxima pausa e uma dica ergonômica — sem relatório ou meta saltando à frente.
2. **Ambiente compartilhado (open space, reunião presencial).** Colegas ouvem, veem a tela e interpretam o que acontece no celular alheio. Som alto, animação de celebração ou cor saturada deixam de ser detalhe de interface e passam a ser risco social. Daí o padrão silencioso, a vibração como alternativa e o tom visual sóbrio.
3. **Home office e reunião online.** Há menos plateia física, mas a câmera está ligada e o fluxo de concentração (“zona de flow”) é o mesmo. O lembrete ainda precisa ser discreto; o alongamento ainda precisa caber em 1 a 3 minutos, sem exigir sair do cômodo.

O horário configurável (início, fim e dias da jornada) existe porque o contexto **não é 24 horas**. Lembrete no almoço, à noite ou no fim de semana quebra a confiança no produto com a mesma força que um alarme no meio de uma reunião.

**Condições que o projeto precisa assumir**

- **Atenção dividida.** O usuário não “entra no app para explorar”. Ele reage a um lembrete ou confere o timer. Ações críticas (iniciar, pausar, retomar, encerrar, seguir o próximo exercício) têm de ser óbvias e com área de toque confortável.
- **Rede instável ou ausente.** No escritório com Wi-Fi corporativo restrito ou em home office com queda de conexão, o timer e o histórico não podem depender da nuvem. Offline-first não é extra: é condição de continuidade.
- **Celular que some da mão.** A pessoa tranca a tela, troca de app ou guarda o aparelho. O timer precisa persistir depois do fechamento; a notificação local precisa sobreviver sem o app em primeiro plano.
- **Privacidade no ombro do colega.** Quem passa atrás da cadeira não deve ler produtividade, ranking nem dados pessoais. Timer e dica podem ficar visíveis; relatório e histórico ficam em abas acessadas de propósito.

**Fluxo real, não o fluxo do menu**

O caminho feliz do caso não é “visitar as quatro abas”. É um laço curto, repetido várias vezes por dia:

Login (primeira vez) → configurar intervalo, duração, tipo de lembrete e horário → deixar o timer correr em segundo plano → receber notificação discreta → abrir o guia de alongamento (ou só encerrar a pausa) → registrar a conclusão → voltar ao trabalho.

Alongar, Pausas e Relatório sustentam o hábito (orientação, histórico, meta, PDF). Eles não podem atrasar o laço principal. Se a configuração inicial for longa ou o primeiro lembrete for invasivo, o contexto de uso mata o produto antes da segunda pausa.

**Implicação para o desenvolvimento:** tratar o expediente como ambiente hostil à interrupção. Priorizar persistência do timer, notificação local configurável, funcionamento sem internet e interface que se resolve em segundos — em vez de telas densas, fluxos longos de onboarding ou qualquer recurso que exija atenção contínua no celular.

---
### 2.4 Funcionalidades

As funcionalidades do MVP não formam uma lista de desejos. Elas fecham o ciclo de adesão definido em 2.1 e cabem no contexto de 2.3. O que não sustenta esse ciclo — gestão de equipe, dashboard de RH, ranking, backup em nuvem, iOS — fica no roadmap e fora da versão 1.0.

**Núcleo: lembrar, pausar, orientar, registrar**

| Função | O que faz no caso | Por que existe |
|---|---|---|
| Timer com contagem regressiva | Iniciar, pausar, retomar e encerrar o intervalo | É o motor do hábito. Sem persistência após fechar o app, o lembrete some no primeiro bloqueio de tela. |
| Notificação local discreta | Avisa no fim do intervalo; padrão silencioso, com vibração ou som suave | Resolve o “nada me interrompe de forma aceitável”. Se for invasiva, o usuário desliga o canal e o produto acaba. |
| Guia visual de alongamento | Sequências curtas (até 3 minutos), ilustração + cronômetro por exercício | Transforma o lembrete em pausa executável no posto, sem aula de fisioterapia nem sair da cadeira. |
| Configuração da jornada | Intervalo (30, 45, 60, 90 min), duração (1, 2, 3 min), tipo de lembrete, horário e dias | Adapta o ciclo à pessoa (prazos, aulas, open space). Configuração errada vira interrupção inútil. |
| Dicas ergonômicas | Texto curto na tela do Timer, alinhado à NR-17 | Orienta postura no momento em que o app já está aberto — sem virar conteúdo separado que ninguém lê. |

Esse conjunto responde à necessidade central: ser lembrado e conseguir cumprir a pausa em poucos minutos, sem exposição.

**Sustentação: ver que as pausas aconteceram**

Histórico local, relatório semanal (gráfico de barras, total e meta) e exportação em PDF não iniciam a pausa. Eles fecham o ciclo de confiança: a pessoa vê se o hábito existe e, se quiser, leva o consolidado para si ou para uma conversa (por exemplo, com RH), **por iniciativa própria**. Por isso o relatório vive em aba própria e não na tela principal.

**Infraestrutura que o usuário não vê, mas o caso exige**

- **Armazenamento local (Hive) e modo offline.** Timer, configurações e histórico precisam sobreviver sem rede. Sincronização avançada via Firebase é evolução, não pré-requisito do MVP.
- **Quatro abas (Timer, Alongar, Pausas, Relatório).** Recortam o produto no essencial. Mais telas no primeiro release diluem o laço curto descrito em 2.3.
- **Conta individual.** Login existe para separar o dado da pessoa. Não implica, na 1.0, painel da empresa nem leitura do que o trabalhador faz no computador.

**O que deliberadamente não é funcionalidade agora**

Monitorar aplicativos, teclado, navegação ou produtividade; gamificação visível (conquistas, ranking); gestão de funcionários; relatórios corporativos automáticos. O caso cita parte disso como restrição ou como futuro. Incluir agora inverteria o usuário (de trabalhador para fiscal) e chocaria com o contrato de privacidade.

**Implicação para o desenvolvimento:** implementar primeiro o núcleo timer–notificação–alongamento–configuração, com persistência local. Relatório e PDF vêm em seguida, como leitura do que já foi registrado. Qualquer tela ou API que observe o comportamento no computador está fora do escopo da análise e da versão 1.0.

---
## 2.5 Personalidade, identidade e experiência

O PausaAtiva foi concebido como um produto:

- Discreto;
- Silencioso;
- Simples;
- Corporativo;
- Leve;
- Ergonômico.

Essas características devem influenciar tanto a interface quanto o comportamento das notificações.

### Palavras conceituais

As principais palavras que representam o produto são:

**Pausa, equilíbrio, ergonomia, simplicidade, cuidado, leveza, organização e bem-estar.**

### Personalidade

A identidade deve transmitir proximidade sem perder o caráter profissional.

O aplicativo pode ser entendido como:

> **Um colega de trabalho digital que lembra o usuário de fazer uma pausa, sem vigiar nem atrapalhar sua rotina.**

### Tom da interface

A comunicação deve ser:

- Clara;
- Objetiva;
- Tranquila;
- Amigável;
- Não invasiva.

Em vez de repreender o usuário, o aplicativo deve convidá-lo a realizar uma pausa de maneira positiva.

Exemplo:

> **Hora de cuidar da postura. Que tal uma pausa de 3 minutos?**

### Como o aplicativo deseja ser lembrado

O PausaAtiva deverá ser lembrado como uma ferramenta simples que ajuda o usuário a cuidar da postura durante o trabalho sem incomodar e sem funcionar como instrumento de vigilância.

---

## 2.6 Funcionalidades e características já definidas

O MVP está organizado em quatro telas principais:

1. **Timer**
2. **Alongamentos**
3. **Pausas**
4. **Relatório**

| Funcionalidade | Necessidade atendida |
|---|---|
| **Timer de pausas** | Controlar o tempo até a próxima pausa. |
| **Iniciar, pausar, retomar e encerrar** | Dar controle ao usuário sobre o timer. |
| **Notificações discretas** | Lembrar o usuário sem interromper excessivamente o trabalho. |
| **Adiar lembrete** | Permitir que o usuário finalize uma atividade antes da pausa. |
| **Guia de alongamentos** | Orientar exercícios rápidos durante a pausa. |
| **Cronômetro do exercício** | Controlar a duração dos movimentos. |
| **Indicador de progresso** | Mostrar a etapa atual da sequência de exercícios. |
| **Configuração de intervalo** | Adaptar a frequência das pausas à rotina. |
| **Duração da pausa** | Permitir configurar quanto tempo a pausa deverá durar. |
| **Tipo de lembrete** | Permitir escolher entre silencioso, vibração ou som. |
| **Horário de trabalho** | Evitar lembretes fora do expediente. |
| **Dias ativos** | Adaptar o aplicativo à jornada semanal. |
| **Histórico de pausas** | Registrar as pausas realizadas. |
| **Relatório semanal** | Acompanhar frequência e evolução das pausas. |
| **Gráfico semanal** | Facilitar a visualização dos dados. |
| **Meta semanal** | Criar uma referência de progresso. |
| **Exportação em PDF** | Permitir salvar ou compartilhar o relatório. |
| **Funcionamento offline** | Manter as principais funções disponíveis sem internet. |

### Configurações de pausa

O usuário poderá configurar intervalos de:

- 30 minutos;
- 45 minutos;
- 60 minutos;
- 90 minutos.

A duração da pausa poderá ser de:

- 1 minuto;
- 2 minutos;
- 3 minutos.

Os tipos de lembrete poderão incluir:

- Silencioso;
- Vibração suave;
- Som discreto.

Também será possível configurar:

- Horário de início do expediente;
- Horário de fim do expediente;
- Dias ativos da semana;
- Comportamento dos lembretes fora do expediente.

---
