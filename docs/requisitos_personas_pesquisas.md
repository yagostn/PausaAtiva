# Documento de Requisitos, Personas e Pesquisas — PausaAtiva

> Baseado nas normas **NR-17 (Ergonomia)** e **ABNT NBR ISO 9241** (Ergonomia da interação humano-sistema)

---

## 1. Contexto e Problema

Trabalhadores que permanecem longos períodos sentados estão sujeitos a desconfortos musculoesqueléticos, má postura, lombalgia e lesões por esforço repetitivo (LER/DORT). A NR-17 estabelece que as condições de trabalho devem adaptar-se às características psicofisiológicas dos trabalhadores, incluindo a organização de pausas durante a jornada.

**Problemas identificados:**
- Longos períodos sentados sem pausas regulares
- Ausência de lembretes durante a rotina de trabalho
- Postura inadequada no uso de dispositivos eletrônicos
- Sobrecarga física acumulada ao longo da jornada
- Falta de orientação ergonômica acessível no dia a dia

---

## 2. Embasamento Legal e Normativo

### NR-17 — Ergonomia (Portaria MTE nº 3.751/1990, atualizada)

| Requisito NR-17 | Aplicação no PausaAtiva |
|---|---|
| Item 17.6.3 — Pausas obrigatórias para sobrecarga muscular | Timer configurável (30, 45, 60 ou 90 min) |
| Item 17.3 — Mobiliário e postura | Dicas ergonômicas na tela principal |
| Item 17.6.4 — Pausas organizadas para recuperação | Configuração de duração (1, 2 ou 3 minutos) |

### ABNT NBR ISO 9241-11:2011 — Usabilidade

- **Eficácia:** o usuário consegue atingir o objetivo (realizar pausas ativas)
- **Eficiência:** mínimo de interações para iniciar o timer
- **Satisfação:** interface discreta e não intrusiva no ambiente de trabalho

### ABNT NBR ISO 9241-110:2020 — Princípios de diálogo

- Adequação à tarefa: fluxo de uso simplificado (Login → Configuração → Timer)
- Autodescritivo: ícones e textos claros em português
- Controlabilidade: usuário define intervalos, duração e tipo de notificação

---

## 3. Pesquisa com Usuários

### Metodologia
Levantamento qualitativo com trabalhadores de escritório e home office.

### Principais descobertas
- A maioria não realiza pausas regulares por esquecer ou não querer interromper o fluxo
- Notificações sonoras causam constrangimento em ambientes compartilhados
- Preferência por lembretes silenciosos ou vibração discreta
- Profissionais valorizam orientações rápidas de alongamento
- Preocupação com privacidade: não querem monitoramento de produtividade

---

## 4. Personas

### Persona 1 — Ana Carvalho
**Cargo:** Analista de RH | **Idade:** 34 anos | **Ambiente:** Open space corporativo

**Contexto:** Trabalha 8h/dia em frente ao computador. Sente dores no pescoço e ombros com frequência, mas raramente faz pausas por conta dos prazos. Fica constrangida com notificações sonoras.

**Objetivos:**
- Ser lembrada de pausas sem chamar atenção dos colegas
- Receber orientações rápidas de alongamento executáveis na cadeira
- Acompanhar metas de pausas semanais

**Frustrações:**
- Apps com muita configuração inicial
- Notificações que tocam em reuniões

---

### Persona 2 — Bruno Mendes
**Cargo:** Desenvolvedor de software | **Idade:** 28 anos | **Ambiente:** Home office

**Contexto:** Passa 10h+ em frente ao computador. Tem episódios de dor lombar e tensão nos punhos. Precisa de lembrete externo para sair da "zona de flow".

**Objetivos:**
- Configurar pausas sem pensar nisso todo dia
- Fazer alongamentos rápidos (até 3 min) sem sair do escritório
- Visualizar histórico de pausas

**Frustrações:**
- Interrupções desnecessárias quando concentrado
- Apps que monitoram atividade e produtividade

---

### Persona 3 — Carla Souza
**Cargo:** Professora universitária | **Idade:** 45 anos | **Ambiente:** Sala de aula + home office

**Contexto:** Diagnosticada com tensão cervical. Precisa de orientações ergonômicas simples sem depender de consultas frequentes.

**Objetivos:**
- Dicas ergonômicas práticas baseadas em evidências
- Pausas adaptadas ao horário de aulas
- Interface simples, sem jargões técnicos

---

## 5. Requisitos Funcionais

| ID | Requisito | Prioridade | Fonte |
|---|---|---|---|
| RF01 | Timer de pausa ativa com contagem regressiva | Alta | NR-17 / Personas |
| RF02 | Notificação local discreta (silenciosa, vibração ou som) | Alta | Personas 1 e 2 |
| RF03 | Guia visual de alongamentos rápidos (até 3 min) | Alta | NR-17 |
| RF04 | Configuração de intervalo (30, 45, 60, 90 min) | Alta | NR-17 / Persona 2 |
| RF05 | Configuração de duração da pausa (1, 2, 3 min) | Média | NR-17 |
| RF06 | Definição de horário e dias de trabalho | Média | Persona 3 |
| RF07 | Histórico local de pausas concluídas | Média | Persona 2 |
| RF08 | Relatório semanal com gráfico e métricas | Média | Personas 1 e 2 |
| RF09 | Exportação do relatório em PDF | Baixa | Persona 1 |
| RF10 | Funcionamento offline (local-first) | Alta | Personas 2 e 3 |
| RF11 | Dicas ergonômicas na tela principal | Média | NR-17 / Persona 1 |

## 6. Requisitos Não Funcionais

| ID | Requisito | Fonte |
|---|---|---|
| RNF01 | O app NÃO deve monitorar: aplicativos usados, navegação, teclas, capturas de tela ou produtividade | Privacidade / LGPD |
| RNF02 | Compatibilidade com Android 7.0 (API 24) ou superior | Abrangência |
| RNF03 | Interface corporativa, leve e discreta | ABNT ISO 9241 |
| RNF04 | Timer persistente após fechamento e reabertura do app | Confiabilidade |
| RNF05 | Tempo de resposta da interface inferior a 300ms | Usabilidade |

---

*Baseado na NR-17, ABNT NBR ISO 9241-11 e ABNT NBR ISO 9241-110.*
*Equipe: Antonio Henrique, Caio Santos, João Vitor Mendonça, João Pedro Oliveira, Yago Santana.*
