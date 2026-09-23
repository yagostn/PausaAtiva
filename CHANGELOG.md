# CHANGELOG — PausaAtiva

Registro das mudanças relevantes do projeto PausaAtiva.

## [0.5.0] — 23/09/2026

### Adicionado
- `docs/prototipo-baixa-fidelidade.pdf`: protótipo de baixa fidelidade do PausaAtiva, em escala de cinza, com login, configuração da jornada, timer, lembrete discreto, alongamentos, histórico de pausas e relatório. A versão editável está no [Figma](https://www.figma.com/design/MJnlkIWOGdclrMMe4bS1tb) — *Caio Machado*

### Alterado
- `README.md`: inclusão da Atividade 04, do link do protótipo em PDF e da responsabilidade de Caio Machado.
- `README.md`: atualização da estrutura do repositório para incluir o protótipo e listar os arquivos que estão em `docs/`.
- Entrega do protótipo ajustada para PDF, formato pedido na atividade, no lugar de PNG e SVG.

## [0.4.0] — 16/09/2026

### Adicionado
- `docs/requisitos.md`: criação do documento de requisitos e inclusão do tópico **2.1 Funcionalidades**, com oito funcionalidades principais descritas por nome, descrição, necessidade do usuário atendida e justificativa — *João Pedro Oliveira*
- `docs/requisitos.md`: inclusão do tópico 2.2 Requisitos funcionais, com 18 requisitos funcionais numerados de RF01 a RF18, contemplando cadastro, login, timer, configuração de pausas, lembretes discretos, guia e cronômetro de alongamentos, dicas ergonômicas, histórico, relatório semanal, exportação em PDF, funcionamento offline e sincronização com Firebase — *Yago Santana*.
- `docs/requisitos.md`: inclusão do tópico **2.3 Requisitos não funcionais**, contemplando usabilidade, acessibilidade, segurança/LGPD, modo offline, discreção e compatibilidade com Android 7.0+ – *Antonio Henrique*
- `docs/requisitos.md`: inclusão do tópico **2.4 CRUD**, identificando o que precisa ser criado, consultado, atualizado ou excluído em conta, configurações de pausa, histórico, relatório/PDF e conteúdo estático, com justificativa das operações que não se aplicam — *Caio Machado*
- `docs/requisitos.md`: inclusão do tópico 2.5 Priorização das Funcionalidades, classificando as oito funcionalidades principais do aplicativo em essenciais, importantes e secundárias, de acordo com sua relevância para a proposta principal e o valor agregado ao usuário — *João Vitor*.

### Alterado
- `README.md`: inclusão da Atividade 03, do link para o documento de requisitos e da responsabilidade de João Pedro Oliveira pelo tópico 2.1.
- `README.md`: atualização da estrutura do repositório para refletir os documentos existentes.
- `README.md`: registro da responsabilidade de Yago Santana pelo tópico 2.2 da Atividade 03 e resumo do escopo dos requisitos funcionais documentados.
- `README.md`: registro da responsabilidade de Caio Machado pelo tópico 2.4 da Atividade 03 e resumo do escopo do CRUD documentado.
- `README.md`: registro da responsabilidade de João Vitor pelo tópico 2.5 da Atividade 03 e inclusão do resumo da classificação e priorização das funcionalidades documentadas.

## [0.3.0] — 09/09/2026

### Adicionado
- `docs/pesquisa.md`: pesquisa de fundamentação com informações sobre sedentarismo ocupacional, necessidades e dificuldades dos usuários, dados sobre LER/DORT e impacto cognitivo das micropausas. Inclui 3 fontes confiáveis (OMS, Ministério da Saúde, Harvard Health) e 3 descobertas com influência direta no projeto — *Antonio Henrique*
- `docs/benchmark.md`: análise comparativa de 3 soluções existentes (Stretchly, Stand Up! e Moova), com funcionalidades, pontos positivos e negativos, aspectos de interface/experiência, o que pode ser aproveitado ou melhorado em cada solução, conclusão com 6 diferenciais do PausaAtiva e seção de fontes consultadas com links — *Caio Machado*
- `docs/personas.md`: criação de 2 personas principais do PausaAtiva, Lucas Almeida (desenvolvedor em home office) e Mariana Souza (assistente administrativa em escritório compartilhado), contemplando perfil/contexto, objetivos, necessidades, dores, comportamentos e relação com o aplicativo. Lucas foi definido como persona prioritária por representar de forma mais completa o fluxo e as funcionalidades centrais do MVP — *Yago Santana*
- `docs/pesquisa.md`: Levantamento de dados sobre sedentarismo e ergonomia no ambiente de trabalho, mapeamento de dores e necessidades dos usuários, seleção de fontes confiáveis e definição das 3 principais descobertas que fundamentam o projeto. — *Antonio Henrique*
- `docs/apresentacao.pdf`: criação da apresentação do projeto, reunindo uma descoberta da pesquisa sobre a importância de micropausas, a análise da solução Moova (anteriormente StretchMinder) no benchmark, a persona prioritária Lucas Almeida e a principal necessidade que o aplicativo deverá atender — *João Vitor*

### Alterado
- `docs/benchmark.md`: Solução 3 substituída de WorkRave (desktop) por Moova/StretchMinder (Android e iOS), tornando a análise mais aderente ao contexto de aplicação mobile do projeto — *Caio Machado*
- `docs/benchmark.md`: links das fontes consultadas adicionados em cada solução e organizados em seção dedicada ao final do documento — *Caio Machado*
- `docs/personas.md`: definição de Lucas Almeida como persona prioritária e refinamento das necessidades do MVP a partir dos dois contextos de uso analisados — home office e escritório compartilhado — destacando requisitos de lembretes discretos, pausas configuráveis, privacidade, funcionamento em segundo plano e acompanhamento do histórico — *Yago Santana*

## [0.2.0] — 03/09/2026

### Adicionado
- `docs/estudo-de-caso.md`: tópico **2.4 Objetivo e proposta de valor**, exigido pela Atividade 01 e ausente na versão anterior.
- `docs/estudo-de-caso.md`: subtópico **Tom da experiência do usuário** em 2.5.
- `docs/estudo-de-caso.md`: condições de contexto **dispositivo, iluminação e ausência de urgência** em 2.3.
- `docs/estudo-de-caso.md`: restrições de **número de interações, tamanho do aplicativo e acessibilidade** em 2.7.
- `docs/estudo-de-caso.md`: análise do conflito entre **notificação push (FCM) e funcionamento offline** em 2.7.

### Alterado
- `docs/estudo-de-caso.md`: o antigo tópico "2.4 Funcionalidades" duplicava o 2.6; sua análise foi incorporada ao 2.6 como "Leitura das funcionalidades".
- `docs/estudo-de-caso.md`: níveis de título padronizados entre os tópicos 2.1 e 2.8.
- `README.md`: perfis do GitHub convertidos em links (antes renderizavam em itálico).

## [0.1.0] — 02/09/2026

### Adicionado
- Estrutura inicial do repositório do projeto PausaAtiva.
- `README.md` com nome do projeto, integrantes, turma, descrição e responsabilidade de cada integrante na Atividade 01.
- `CHANGELOG.md` para registro das mudanças do projeto.
- `docs/estudo-de-caso.md` com a análise inicial do estudo de caso, contemplando:
  - 2.1 Problema, relevância e necessidade central — *Caio Machado*
  - 2.2 Público e usuários — *Caio Machado*
  - 2.3 Contexto de uso — *Yago Santana*
  - 2.4 Objetivo e proposta de valor — *Yago Santana*
  - 2.5 Personalidade, identidade e experiência — *João Vitor*
  - 2.6 Funcionalidades e características já definidas — *João Vitor*
  - 2.7 Restrições e condições — *Antonio Henrique*
  - 2.8 Pontos de atenção — *Antonio Henrique*
