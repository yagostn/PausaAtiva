# Uso de Inteligência Artificial — PausaAtiva

## 1. Objetivo

Este documento apresenta como ferramentas de Inteligência Artificial foram utilizadas como apoio na elaboração dos diagramas e modelos do projeto PausaAtiva. Também registra os prompts utilizados, os erros identificados nas respostas geradas e as soluções adotadas pelo grupo para corrigir as inconsistências.

A IA foi utilizada como ferramenta de apoio, não substituindo a análise, a validação e as decisões técnicas dos integrantes do grupo.

## 2. Ferramentas utilizadas

- **Inteligência Artificial generativa:** apoio na elaboração, organização e revisão dos diagramas e modelos.
- **Validação pelo grupo:** análise das informações geradas, comparação com os requisitos do projeto e realização dos ajustes necessários.

## 3. Prompts utilizados

### 3.1. Diagrama de Caso de Uso

**Objetivo:** representar os atores e as principais funcionalidades do PausaAtiva, demonstrando suas interações com o sistema.

**Prompt:**

> Elabore um diagrama de caso de uso UML para o aplicativo PausaAtiva, uma aplicação mobile desenvolvida para auxiliar trabalhadores que passam longos períodos sentados a realizarem pausas ativas durante o expediente.
>
> Considere os principais atores do sistema e suas respectivas permissões. Represente funcionalidades como cadastro, autenticação, configuração de intervalos de pausa, acompanhamento do timer, recebimento de notificações, visualização de alongamentos, registro de pausas e consulta ao histórico e relatórios.
>
> Organize o diagrama seguindo as convenções UML, utilizando corretamente atores, casos de uso, relacionamentos e limites do sistema. Evite funcionalidades duplicadas e mantenha uma representação clara e coerente com os requisitos do projeto.

### 3.2. Diagrama de Classes

**Objetivo:** representar a estrutura do sistema por meio de classes, atributos, métodos e relacionamentos.

**Prompt:**

> Elabore um diagrama de classes UML para o aplicativo PausaAtiva, considerando sua proposta, seus requisitos funcionais e sua arquitetura planejada em Flutter e Dart, com Firebase e Cloud Firestore.
>
> Identifique as principais classes do domínio, seus atributos, métodos e responsabilidades. Considere as entidades relacionadas aos usuários, empresas, equipes, configurações de pausas, registros de pausas, exercícios e notificações, conforme aplicável ao escopo definido.
>
> Defina corretamente os relacionamentos, multiplicidades, associações e dependências entre as classes. Evite duplicidade de informações e não inclua atributos ou funcionalidades que não tenham justificativa nos requisitos do projeto.
>
> Utilize a notação UML e mantenha a estrutura organizada, legível e consistente com o modelo de dados.

### 3.3. Modelo do Banco de Dados Firebase

**Objetivo:** representar a organização dos dados que serão armazenados no Firebase, considerando a estrutura planejada para o aplicativo.

**Prompt:**

> Proponha um modelo de banco de dados para o aplicativo PausaAtiva utilizando Firebase Cloud Firestore.
>
> Organize a estrutura em coleções e documentos, considerando os dados necessários para usuários, empresas, equipes, configurações de pausas, registros de pausas, exercícios e demais informações previstas nos requisitos.
>
> Para cada coleção, apresente os campos, seus respectivos tipos de dados e os relacionamentos ou referências entre documentos.
>
> Considere boas práticas do Firestore, evitando estruturas desnecessariamente complexas, duplicação excessiva de dados e dificuldades de consulta. O modelo deve ser coerente com as funcionalidades e regras de negócio do PausaAtiva.

### 3.4. Modelo do Banco de Dados — Firestore e Dart

**Objetivo:** relacionar a estrutura de armazenamento do Firestore com as classes utilizadas no desenvolvimento em Dart.

**Prompt:**

> Com base no modelo de dados do PausaAtiva, elabore uma representação que relacione as coleções e os documentos do Firebase Cloud Firestore às classes de domínio desenvolvidas em Dart.
>
> Apresente os nomes das coleções, os campos armazenados, os tipos de dados no Firestore e seus correspondentes em Dart.
>
> Considere a conversão entre documentos do Firestore e objetos Dart, incluindo identificadores, datas, listas, referências e campos opcionais.
>
> Garanta que os nomes, tipos e responsabilidades sejam consistentes entre o modelo de banco de dados e as classes. Não crie campos ou classes sem justificativa nos requisitos do projeto.

## 4. Erros identificados e soluções adotadas

Durante a utilização da Inteligência Artificial, foram identificadas inconsistências nos diagramas gerados. O principal problema ocorreu porque a IA interpretou inicialmente o projeto considerando apenas o escopo do MVP, deixando de contemplar toda a estrutura planejada para o PausaAtiva.

| Material | Erro identificado | Solução adotada pelo grupo |
|---|---|---|
| Diagrama de Caso de Uso | A IA interpretou o projeto considerando apenas o escopo inicial do MVP, deixando de representar funcionalidades importantes, como autenticação e outras interações previstas nos requisitos. | O grupo revisou o escopo fornecido à IA, detalhou as funcionalidades e os atores do sistema e solicitou a atualização do diagrama para contemplar a proposta completa do PausaAtiva. |
| Diagrama de Classes | A primeira representação não contemplava completamente a estrutura planejada para o sistema, pois também considerava uma visão limitada ao MVP, deixando de incluir elementos importantes relacionados às funcionalidades e à organização do aplicativo. | O grupo complementou as informações fornecidas à IA e revisou as classes, atributos e relacionamentos para que representassem melhor a estrutura completa do projeto. |
| Modelo do Banco de Dados Firebase | Não foram identificados problemas relevantes na estrutura gerada. | O grupo realizou a conferência do modelo e verificou sua coerência com as necessidades e funcionalidades previstas para o aplicativo. |
| Modelo do Banco de Dados — Firestore e Dart | Não foram identificados problemas relevantes na correspondência entre a estrutura do Firestore e as classes Dart. | O grupo revisou a representação e verificou a consistência entre os campos, tipos de dados e classes correspondentes. |

## 5. Processo de validação

Após a geração dos materiais, o grupo realizou a revisão das informações considerando:

- Coerência com os requisitos funcionais e não funcionais do PausaAtiva.
- Compatibilidade entre os diagramas e a proposta completa do aplicativo.
- Consistência entre as classes Dart e a estrutura planejada no Firestore.
- Identificação de informações duplicadas, relacionamentos incorretos ou elementos desnecessários.
- Clareza e padronização das representações.

As inconsistências identificadas nos diagramas foram analisadas e corrigidas pelo grupo antes da inclusão dos materiais na documentação do projeto.

## 6. Considerações finais

A utilização da Inteligência Artificial contribuiu para agilizar a elaboração e a organização dos diagramas e modelos do PausaAtiva. Entretanto, os resultados não foram considerados definitivos sem revisão.

O grupo manteve a responsabilidade pela análise crítica, validação das informações e realização dos ajustes necessários, garantindo que os materiais estivessem alinhados à proposta e aos requisitos do aplicativo.
