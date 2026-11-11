# PausaAtiva

Aplicativo mobile que lembra trabalhadores em atividade sentada de fazer pausas ativas ao longo do expediente, com contagem regressiva, guia visual de alongamentos rápidos e acompanhamento das pausas realizadas.

- **Disciplina:** Programação para Dispositivos Móveis
- **Instituição:** Universidade Tiradentes (UNIT)
- **Turma:** GP0015NOT07A
- **Professor(a):** Layse Santos Souza
- **Período:** 2026.2

---

## Integrantes

| Nome | GitHub |
|------|--------|
| Antonio Henrique | [`@Toinh1`](https://github.com/Toinh1) |
| Caio Machado | [`@caio-machado-dev`](https://github.com/caio-machado-dev) |
| João Pedro Oliveira | [`@Guimaa6`](https://github.com/Guimaa6) |
| João Vitor Mendonça | [`@JoaoVitorMS0`](https://github.com/JoaoVitorMS0) |
| Yago Santana | [`@yagostn`](https://github.com/yagostn) |

---

## Sobre o projeto

O PausaAtiva atende trabalhadores que passam longos períodos sentados e acabam esquecendo de se movimentar durante o expediente. O aplicativo envia lembretes discretos em intervalos configuráveis, conduz o usuário por uma sequência curta de alongamentos e registra as pausas realizadas para acompanhamento semanal.

**Stack prevista:** Flutter, Dart, Riverpod e Firebase (Authentication e Cloud Firestore). Hoje o repositório já tem o shell do app Flutter com Riverpod; o Firebase entra na issue #5.

---

## Atividade 01 — Análise do Estudo de Caso

Entrega: [`docs/estudo-de-caso.md`](docs/estudo-de-caso.md)

### Responsabilidade de cada integrante

| Integrante | Responsabilidade nesta atividade |
|------------|----------------------------------|
| Caio Machado | 2.1 Problema · 2.2 Público e usuários |
| Yago Santana | 2.3 Contexto de uso |
| Yago Santana | 2.4 Objetivo e proposta de valor |
| João Vitor | 2.5 Personalidade, identidade e experiência |
| João Vitor | 2.6 Funcionalidades e características já definidas |
| Antonio Henrique | 2.7 Restrições e condições |
| Antonio Henrique | 2.8 Pontos de atenção |

---

## Atividade 02 — Pesquisa, Benchmark e Personas

Entregas: [`docs/pesquisa.md`](docs/pesquisa.md)

### Responsabilidade de cada integrante

| Integrante | Responsabilidade nesta atividade |
|------------|----------------------------------|
| Antonio Henrique | Pesquisa |
| Caio Machado | Benchmark |
| Yago Santana | Personas |
| João Vitor | Slide De Apresentação |

---

## Atividade 03 — Levantamento de Requisitos

Entrega: [`docs/requisitos.md`](docs/requisitos.md)

### Responsabilidade registrada

| Integrante | Responsabilidade nesta atividade |
|------------|----------------------------------|
| João Pedro Oliveira | Tópico 2.1 — definição e documentação das funcionalidades do aplicativo |
| Yago Santana | Tópico 2.2 — levantamento e documentação dos requisitos funcionais do aplicativo |
| Antonio Henrique | Tópico 2.2 — requisitos funcionais RF13 a RF20, acrescentados na Unidade II ([#22](https://github.com/yagostn/PausaAtiva/issues/22)) |
| Antonio Henrique | Tópico 2.3 – levantamento e documentação dos requisitos não funcionais do aplicativo |
| Caio Machado | Tópico 2.4 — identificação e documentação das operações de CRUD do aplicativo |
| João Vitor | Tópico 2.5 — classificação e priorização das funcionalidades do aplicativo |

O tópico 2.2 documenta 20 requisitos funcionais (RF01 a RF20), abrangendo cadastro e login, timer, configuração das pausas, notificações locais, alongamentos, ergonomia, histórico, relatório semanal sem frases de culpa, exportação em PDF local, operação offline-first, sincronização em nuvem, ações rápidas (adiar/dispensar) e persistência do cronômetro.

O tópico 2.4 identifica, para conta, configurações de pausa, histórico, relatório/PDF e conteúdo estático, o que precisa ser criado, consultado, atualizado ou excluído, e justifica as operações que não se aplicam.

O tópico 2.5 classifica as 8 funcionalidades do PausaAtiva em três níveis de prioridade: essenciais, importantes e secundárias, considerando sua necessidade para a proposta principal do aplicativo e o valor agregado ao usuário.

---

## Atividade 04 — Protótipo de baixa fidelidade

Entrega: [`docs/prototipo-baixa-fidelidade.pdf`](docs/prototipo-baixa-fidelidade.pdf)

### Responsabilidade registrada

| Integrante | Responsabilidade nesta atividade |
|------------|----------------------------------|
| Caio Machado | Protótipo de baixa fidelidade das telas e do fluxo principal |
| João Vitor | Protótipo de baixa fidelidade das telas e do fluxo principal |

O protótipo representa a estrutura e a navegação, sem a identidade visual final. Cobre as quatro áreas do MVP (Timer, Alongar, Pausas e Relatório) e o ciclo de login, configuração da jornada, timer, lembrete discreto, alongamento e registro da pausa. A versão editável está no [Figma](https://www.figma.com/design/MJnlkIWOGdclrMMe4bS1tb).

Entrega: [`docs/prototipoAltaFidelidade.pdf`](docs/prototipoAltaFidelidade.pdf)


| Integrante | Responsabilidade nesta atividade |
| --- | --- |
| Antonio Henrique | Desenvolvimento do protótipo de alta fidelidade |
| João Pedro Oliveira | Desenvolvimento do protótipo de alta fidelidade |
| Yago Santana | Desenvolvimento do protótipo de alta fidelidade |

O protótipo de alta fidelidade foi desenvolvido com base nos requisitos e nas funcionalidades definidos nas atividades anteriores, buscando representar de forma mais próxima da experiência final do aplicativo PausaAtiva.

A atividade teve como objetivo apresentar a interface visual do sistema, organizar seus elementos e demonstrar os principais fluxos de interação, considerando as necessidades dos usuários e a proposta de incentivar a realização de pausas ativas durante o expediente. [Figma](https://www.figma.com/design/HNelFDm3qMNY9oqZkBX4gE/PausaAtiva---MVP?m=auto&t=hZ9HiGgiPeYtZQnh-1).

---
## Atividade 05 - Diagramas e modelagens

### Responsabilidade registrada

| Integrante | Responsabilidade nesta atividade |
|------------|----------------------------------|
| João Vitor | Criação do diagrama de classe e de uso, e modelagens de banco |

Os diagramas abaixo representam a estrutura e a modelagem do sistema PausaAtiva, incluindo seus casos de uso, classes e organização dos dados no Firebase.

- [Diagrama de Caso de Uso (PDF)](docs/DiagramaCasoDeUso.pdf)
- [Diagrama de Classes (PDF)](docs/DiagramaDeClasse.pdf)
- [Modelo do Banco de Dados Firebase (PNG)](docs/ModeloBancoDeDadosFirebase.png)
- [Modelo do Banco de Dados — Firestore e Dart (PNG)](docs/ModeloBancoDeDadosFirestoreEDart.png)

---

## Atividade 06 — Unidade II: sprint 1 (11/11/2026)

Organização do quadro e primeiras entregas da Unidade II. O plano das sprints até 16/12 está no project [PausaAtiva - Estrutura](https://github.com/users/yagostn/projects/2) e o roteiro na [#16](https://github.com/yagostn/PausaAtiva/issues/16).

### Responsabilidade registrada

| Integrante | Responsabilidade nesta atividade |
|------------|----------------------------------|
| Antonio Henrique | Requisitos funcionais RF13 a RF20 em `docs/requisitos.md` ([#22](https://github.com/yagostn/PausaAtiva/issues/22), PR #59). Revisão e merge do PR #60 |
| Caio Machado | Organização do quadro, das sprints e das issues ([#56](https://github.com/yagostn/PausaAtiva/issues/56), PR #57). Shell do aplicativo Flutter ([#4](https://github.com/yagostn/PausaAtiva/issues/4), PR #60). Revisão e merge dos PRs #58 e #59 |
| João Pedro Oliveira | Responsável pelo fluxo de navegação real do aplicativo ([#14](https://github.com/yagostn/PausaAtiva/issues/14)), previsto para a sprint 7, depois que as telas abrirem no emulador. Revisão e merge do PR #57 |
| João Vitor | Atualização e limpeza da estrutura de pastas do repositório (PR #65) e formalização da documentação sobre o uso de IA conforme a Portaria CNPq nº 2.664/2026 em `docs/uso-de-ia.md` |
| Yago Santana | Proposta de escopo da Unidade II e modelo único do trabalhador em `docs/decisao-escopo-unidade-ii.md` ([#20](https://github.com/yagostn/PausaAtiva/issues/20), PR #58) |

### Requisitos RF13 a RF20

Entrega: [`docs/requisitos.md`](docs/requisitos.md), tópico 2.2

Antonio Henrique acrescentou oito requisitos funcionais que o texto da Unidade I ainda não numerava: registrar a conclusão da pausa (RF13), consultar o histórico (RF14), relatório semanal sem frases de culpa (RF15), exportar o relatório em PDF no aparelho (RF16), operação offline (RF17), sincronização com a nuvem (RF18), adiar e dispensar o lembrete (RF19) e persistência do cronômetro (RF20).

### Decisão de escopo e modelo de dados

Entrega: [`docs/decisao-escopo-unidade-ii.md`](docs/decisao-escopo-unidade-ii.md)

Yago Santana documentou a proposta do **Caminho A (trabalhador individual)**, a estrutura prevista para o Firestore e a persistência offline-first. **A aprovação do grupo ainda está pendente na [#1](https://github.com/yagostn/PausaAtiva/issues/1)**. Até a decisão ser confirmada, ninguém configura coleções nem regras no Firebase.

### Shell do aplicativo Flutter

Issue: [#4](https://github.com/yagostn/PausaAtiva/issues/4) (tarefas #24, #25 e #26)

Caio Machado colocou o projeto Flutter no repositório: pastas por funcionalidade, Riverpod, `minSdk` 24, quatro abas, tema, acessibilidade e abertura curta.

O **shell** é a estrutura do app que envolve as telas: a abertura, a navegação entre as abas, o tema e as pastas onde o resto do código vai entrar. As telas ainda estão vazias; as próximas issues preenchem cada uma.

O app abre uma tela de abertura com o nome **PausaAtiva** e a frase "Pausas da sua jornada" (menos de um segundo) e segue para quatro abas vazias: **Timer, Alongar, Lembretes e Relatório**. Em largura a partir de 600 a navegação vai para a lateral; abaixo disso, fica na barra inferior. A aba Timer já mostra o texto "Pronto para iniciar", e os textos "Em andamento" e "Pausado" ficam preparados para a #38, para que o estado não dependa só de cor. Firebase, notificação, persistência e as regras do timer ficam nas issues seguintes.

Para rodar: `flutter pub get` e `flutter run` com um emulador Android (7.0 ou superior).

### Uso de Inteligência Artificial e adequação de pastas

Entrega: [`docs/uso-de-ia.md`](docs/uso-de-ia.md)

João Vitor realizou a adequação e limpeza da estrutura de pastas do repositório (PR #65) e formalizou a documentação sobre o uso de Inteligência Artificial em conformidade com a Portaria CNPq nº 2.664/2026, discriminando o uso de ferramentas generativas (ChatGPT para a modelagem dos diagramas e banco na Unidade I; Claude para organização das sprints e shell Flutter na Unidade II; e Codex, Gemini e Copilot em suporte técnico e revisão).

---

## Documentação sobre o uso de Inteligência Artificial

Documento que registra a utilização de ferramentas de IA como apoio na elaboração dos diagramas e modelos do PausaAtiva, na organização das sprints e das issues da Unidade II e na implementação do shell do aplicativo Flutter (#4), em conformidade com a Portaria CNPq nº 2.664/2026, incluindo os prompts utilizados, os erros identificados durante a geração e as soluções adotadas pelo grupo.

- [Uso de Inteligência Artificial](docs/uso-de-ia.md)

---
## Estrutura do repositório

```
PausaAtiva/
├── README.md
├── CHANGELOG.md
├── pubspec.yaml
├── analysis_options.yaml
├── android/              # minSdk 24 (Android 7.0)
├── ios/ linux/ macos/ web/ windows/   # gerados pelo flutter create
├── lib/
│   ├── main.dart
│   ├── app.dart
│   ├── core/
│   │   ├── theme/
│   │   └── widgets/
│   ├── shell/            # abertura e navegação das quatro abas
│   └── features/
│       ├── timer/        # presentation/ domain/ data/
│       ├── alongar/      # presentation/ domain/ data/
│       ├── lembretes/    # presentation/ domain/ data/
│       └── relatorio/    # presentation/ domain/ data/
├── test/
│   └── widget_test.dart
└── docs/
    ├── DiagramaCasoDeUso.pdf
    ├── DiagramaDeClasse.pdf
    ├── ModeloBancoDeDadosFirebase.png
    ├── ModeloBancoDeDadosFirestoreEDart.png
    ├── apresentacao.pdf
    ├── apresentacaoFinalUnidade1.pdf
    ├── apresentacaoRequisitos.pdf
    ├── benchmark.md
    ├── decisao-escopo-unidade-ii.md
    ├── estudo-de-caso.md
    ├── personas.md
    ├── pesquisa.md
    ├── prototipo-baixa-fidelidade.pdf
    ├── prototipoAltaFidelidade.pdf
    ├── requisitos.md
    └── uso-de-ia.md
```

---

## Histórico de mudanças

As alterações do projeto são registradas em [`CHANGELOG.md`](CHANGELOG.md).
