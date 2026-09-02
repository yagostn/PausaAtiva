# Justificativa das Decisões Visuais — PausaAtiva

> Este documento registra as escolhas de design relacionadas à **discrição no ambiente de trabalho**.

---

## 1. Premissa Central de Design

O PausaAtiva foi concebido para ser **discreto, silencioso, simples e corporativo**. O trabalhador usa o app dentro de um ambiente profissional — open space, escritório ou home office com câmera ligada — onde notificações invasivas, cores chamativas ou animações exageradas causam constrangimento.

> *"O colega de trabalho que te lembra de levantar da cadeira antes que sua coluna grite."*

---

## 2. Paleta de Cores

### Escolha: Teal (#1A7A80) sobre fundo branco/cinza muito claro

**Justificativa:**
- O teal remete a saúde, calma e profissionalismo — associações positivas para um app de bem-estar corporativo
- Contraste adequado com fundo branco (ratio ≥ 4.5:1), atendendo às diretrizes **WCAG 2.1 nível AA**
- Paleta neutra não chama atenção na tela quando visto por terceiros, preservando privacidade visual
- Evitadas cores saturadas (vermelho, laranja, amarelo) que remetem a urgência — incompatíveis com o tom sereno do app

| Elemento | Cor | Hex | Motivo |
|---|---|---|---|
| Cor primária / botões | Teal | `#1A7A80` | Saúde, profissionalismo, contraste adequado |
| Fundo principal | Branco | `#FFFFFF` | Limpeza visual, discrição |
| Fundo secundário | Cinza muito claro | `#F5F5F5` | Separação de seções sem peso visual |
| Texto principal | Cinza escuro | `#212121` | Leitura confortável, não agressivo |
| Destaque suave | Teal claro | `#E0F2F2` | Destacar informações sem exagero |

---

## 3. Tipografia

### Escolha: Fonte sans-serif do sistema (Material 3 / Roboto)

**Justificativa:**
- Fonte nativa do Android garante legibilidade em qualquer tamanho de tela
- Fontes sans-serif são padrão em ambientes corporativos — comunicam modernidade e clareza
- Não utilizada tipografia decorativa ou manuscrita, inadequada para contexto profissional
- Hierarquia clara: títulos em Medium/Bold, corpo em Regular — facilita escaneabilidade sem distrair

---

## 4. Tipo de Notificação — Padrão Silencioso

### Escolha: Notificação silenciosa como padrão, com opções de vibração suave ou som discreto

**Justificativa:**
- Em open spaces ou reuniões, sons inesperados causam constrangimento
- O padrão silencioso respeita a autonomia e o contexto profissional do usuário
- A vibração suave permite feedback tátil sem expor o lembrete aos colegas
- O som discreto (sino tibetano) foi escolhido em vez do "beep" após feedback de usuários

> **Registro de decisão:** O som do alarme foi alterado de "beep" para "sino tibetano" após funcionários relatarem que o beep causava ansiedade e era percebido como intrusivo no ambiente de trabalho.

---

## 5. Layout e Densidade Visual

### Escolha: Interface minimalista com alto espaçamento (Material 3)

**Justificativa:**
- Elementos com amplo espaçamento permitem uso rápido sem erros, mesmo em situações de pressa
- Tela principal exibe apenas informações essenciais: próxima pausa, timer e dica ergonômica
- Navegação bottom bar com 4 abas segue padrão Material Design, familiar ao usuário Android
- Ausência de banners, pop-ups ou gamificação intrusiva — o app não deve "gritar" por atenção

---

## 6. Ícones e Ilustrações

### Escolha: Ícones outlined do Material Icons + ilustrações flat de figura humana neutra

**Justificativa:**
- Ícones outlined têm aparência mais leve e moderna, adequados ao design corporativo discreto
- Ilustrações representam figura humana neutra (sem marcadores de gênero, etnia ou idade), garantindo inclusividade
- Estilo flat (sem sombras pesadas) é consistente com a paleta neutra e reforça identidade minimalista

---

## 7. Ausência de Gamificação Visível

### Escolha: Sem badges, pontos, rankings ou recompensas visuais chamativas

**Justificativa:**
- Gamificação excessiva é inadequada para app de saúde corporativa — pode trivializar a necessidade médica das pausas
- O relatório semanal fornece feedback de progresso de forma sóbria (gráfico de barras + número de pausas)
- A meta semanal (ex.: 24/30 pausas) motiva sem pressionar ou constranger o usuário

---

## 8. Privacidade Visual

### Escolha: Tela principal não exibe dados sensíveis de forma proeminente

**Justificativa:**
- Tela do Timer mostra apenas o contador e a próxima pausa — um colega que veja a tela não obtém informação pessoal alguma
- Relatório e histórico estão em abas separadas, acessadas intencionalmente
- Respeita a privacidade do trabalhador no ambiente corporativo e está alinhado com a LGPD

---

*Documento elaborado pela equipe PausaAtiva.*
*Equipe: Antonio Henrique, Caio Santos, João Vitor Mendonça, João Pedro Oliveira, Yago Santana.*
