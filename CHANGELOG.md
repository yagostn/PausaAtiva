# CHANGELOG — PausaAtiva

Todas as mudanças relevantes realizadas no protótipo e no aplicativo são registradas neste arquivo.

O formato segue [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/).

---

## [Não lançado]

### Planejado
- Suporte a iOS
- Mais sequências de exercícios de alongamento
- Sincronização avançada via Firebase
- Sistema de gestão para empresas
- Dashboard para RH com relatórios corporativos anônimos
- Gamificação opcional (conquistas)
- Backup em nuvem

---

## [1.0.0] — MVP inicial — 2026-09-02

### Adicionado
- Tela Timer com contagem regressiva e ações iniciar, pausar, retomar e encerrar
- Guia visual de alongamentos rápidos (até 3 minutos) com ilustrações e cronômetro por exercício
- Tela de configuração de pausas: intervalo (30, 45, 60, 90 min), duração (1, 2, 3 min), tipo de lembrete e horário de trabalho
- Relatório semanal com gráfico de barras, total de pausas e meta semanal
- Exportação do relatório em PDF
- Funcionamento offline com armazenamento local (Hive)
- Notificações locais discretas via flutter_local_notifications
- Dicas ergonômicas exibidas na tela principal (baseadas na NR-17)
- Navegação por bottom bar com 4 abas: Timer, Alongar, Pausas, Relatório

---

## Registro de Decisões de Protótipo

Este bloco registra mudanças de design realizadas após feedback de usuários ou testes.

---

### [Notificação] — Alteração do som de alarme — 2026-08-20

**Mudança:** O som de alarme padrão foi alterado de "beep" eletrônico para "sino tibetano".

**Motivo:** Funcionários relataram que o beep causava ansiedade e era percebido como intrusivo no ambiente de trabalho compartilhado (open space). O sino tibetano foi avaliado como mais suave, menos invasivo e compatível com o tom discreto do aplicativo.

**Impacto:** Alteração no arquivo de assets de áudio; atualização do seletor de tipo de lembrete na tela de configuração.

---

### [Visual] — Paleta de cores ajustada — 2026-08-15

**Mudança:** Saturação da cor primária reduzida de `#00BCD4` (ciano vibrante) para `#1A7A80` (teal mais sóbrio).

**Motivo:** Versões iniciais do protótipo usavam um azul-ciano mais saturado que chamava atenção excessiva na tela em ambientes corporativos. Após avaliação com usuários, optou-se por tom mais sóbrio que mantém a identidade de saúde/bem-estar sem ser visualmente invasivo.

---

### [UX] — Remoção de animação de celebração ao completar pausa — 2026-08-10

**Mudança:** Removida animação de confetes/celebração que aparecia ao concluir uma pausa.

**Motivo:** Em testes de usabilidade, usuários em ambiente de trabalho relataram que a animação chamava atenção dos colegas e causava constrangimento. O feedback positivo foi substituído por um ícone de check discreto e atualização silenciosa do contador de pausas.

---

### [Acessibilidade] — Aumento do tamanho mínimo dos botões — 2026-08-05

**Mudança:** Área de toque dos botões principais aumentada para mínimo de 48x48dp.

**Motivo:** Conformidade com as diretrizes de acessibilidade do Material Design e WCAG 2.1, garantindo uso confortável para usuários com dificuldades motoras finas ou em movimento.

---

## [1.0.1] - 2026-09-02

### Adicionado

- Criação inicial do repositório do projeto PausaAtiva.
- Criação do README.md.
- Criação do CHANGELOG.md.
- Criação da documentação docs/estudo-de-caso.md.
- Análise inicial do problema, público-alvo e contexto de uso.
- Definição das principais funcionalidades e restrições do projeto.
---

*Para adicionar um novo registro, use o formato:*

```

### [Categoria] — Descrição breve — AAAA-MM-DD

**Mudança:** O que foi alterado.
**Motivo:** Por que foi alterado (inclua feedback de usuários quando aplicável).
**Impacto:** Quais arquivos/componentes foram afetados (opcional).
```
