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

**Stack prevista:** Flutter, Dart, Riverpod e Firebase (Authentication e Cloud Firestore).

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
| Antonio Henrique | Tópico 2.3 – levantamento e documentação dos requisitos não funcionais do aplicativo |
| Caio Machado | Tópico 2.4 — identificação e documentação das operações de CRUD do aplicativo |
| João Vitor | Tópico 2.5 — classificação e priorização das funcionalidades do aplicativo |

O tópico 2.2 documenta 18 requisitos funcionais, abrangendo cadastro e login, timer, configuração das pausas, notificações, alongamentos, ergonomia, histórico, relatório semanal, exportação em PDF, funcionamento offline e sincronização dos dados.

O tópico 2.4 identifica, para conta, configurações de pausa, histórico, relatório/PDF e conteúdo estático, o que precisa ser criado, consultado, atualizado ou excluído, e justifica as operações que não se aplicam.

O tópico 2.5 classifica as 8 funcionalidades do PausaAtiva em três níveis de prioridade: essenciais, importantes e secundárias, considerando sua necessidade para a proposta principal do aplicativo e o valor agregado ao usuário.

---

## Atividade 04 — Protótipo de baixa fidelidade

Entregas: [`docs/prototipo-baixa-fidelidade.png`](docs/prototipo-baixa-fidelidade.png) · [`docs/prototipo-baixa-fidelidade.svg`](docs/prototipo-baixa-fidelidade.svg) · [Figma](https://www.figma.com/design/MJnlkIWOGdclrMMe4bS1tb)

### Responsabilidade registrada

| Integrante | Responsabilidade nesta atividade |
|------------|----------------------------------|
| Caio Machado | Protótipo de baixa fidelidade das telas e do fluxo principal |

O protótipo representa a estrutura e a navegação, sem a identidade visual final. Cobre as quatro áreas do MVP (Timer, Alongar, Pausas e Relatório) e o ciclo de login, configuração da jornada, timer, lembrete discreto, alongamento e registro da pausa.

---

## Estrutura do repositório

```
README.md
CHANGELOG.md
docs/
├── apresentacao.pdf
├── apresentacaoRequisitos.pdf
├── benchmark.md
├── estudo-de-caso.md
├── personas.md
├── pesquisa.md
├── prototipo-baixa-fidelidade.png
├── prototipo-baixa-fidelidade.svg
└── requisitos.md
```

---

## Histórico de mudanças

As alterações do projeto são registradas em [`CHANGELOG.md`](CHANGELOG.md).
