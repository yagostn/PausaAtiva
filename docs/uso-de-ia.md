# Uso de Inteligência Artificial — PausaAtiva

## 1. Objetivo

Este documento apresenta como ferramentas de Inteligência Artificial foram utilizadas como apoio na elaboração dos diagramas e modelos do projeto PausaAtiva e, na Unidade II, na organização do quadro, das sprints e do texto das issues. Também registra os prompts utilizados, os erros identificados nas respostas geradas e as soluções adotadas pelo grupo para corrigir as inconsistências.

A IA foi utilizada como ferramenta de apoio, não substituindo a análise, a validação e as decisões técnicas dos integrantes do grupo.

## 2. Ferramentas utilizadas

- **Inteligência Artificial generativa:** apoio na elaboração, organização e revisão dos diagramas e modelos, e na organização das issues e das sprints da Unidade II.
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

### 3.5. Organização do quadro, das sprints e das issues da Unidade II

**Responsável:** Caio Machado.

**Objetivo:** distribuir o trabalho da Unidade II em sprints até 16/12/2026, com cinco integrantes, e deixar cada issue explicando o que a pessoa precisa fazer.

**Ferramenta:** assistente de código no Cursor, com acesso de escrita ao repositório e, depois da liberação, ao project [PausaAtiva - Estrutura](https://github.com/users/yagostn/projects/2).

**Prompts:**

> me passe todos os comandos e passos que preciso fazer para reealizar a primeira task de #4 a issue no caso

> yago criou o projects, quero que organize em sprints com base no que temos que fazer essa semana e nas proximas, organize tudo em sprint do que temos que fazer essa semana, pensando na quantidade de intagrantes que temos e que temos entrega para hoje

> Estou achando poucas tasks, e a visualização no projetcs não especifica qual faz parte daquela sprint ou não

> Tenho acesso agora, implemente essa visualização

> tem muita task que é mais documentação, por exemplo, toda pessoa que realizar uma implementação, ela automaticamente já vai ter que mexer no README e já vai ter que mexer na parte de tipo o que é que ela fez. [...] não precisa ter tanta task de documentação. A gente tem mais tasks de fazer realmente o que precisa ser feito

> verifica se todas as tasks que a gente cadastrou lá dentro do projeto tá alinhado [...] Eu quero bem explicativo mesmo, pra que a pessoa abra a issue e consiga ver o que ela precisa fazer. [...] de acordo com o projeto, de acordo com a documentação, de tudo aquilo que eu te mandei.

**Como foi feito:** a IA leu a issue #16, os prazos de 02/12, 09/12 e 16/12 e os documentos do repositório. Em seguida leu os PDFs do enunciado e as duas documentações técnicas enviadas por Caio. O quadro ganhou o campo Sprint e uma aba por período. As tarefas de implementação foram escritas para dizer o que fazer, o que não fazer e quando a issue acaba. README e CHANGELOG deixaram de ser tarefa solta e passaram a entrar no commit de quem implementa.

## 4. Erros identificados e soluções adotadas

Durante a utilização da Inteligência Artificial, foram identificadas inconsistências nos diagramas gerados. O principal problema ocorreu porque a IA interpretou inicialmente o projeto considerando apenas o escopo do MVP, deixando de contemplar toda a estrutura planejada para o PausaAtiva.

| Material | Erro identificado | Solução adotada pelo grupo |
|---|---|---|
| Diagrama de Caso de Uso | A IA interpretou o projeto considerando apenas o escopo inicial do MVP, deixando de representar funcionalidades importantes, como autenticação e outras interações previstas nos requisitos. | O grupo revisou o escopo fornecido à IA, detalhou as funcionalidades e os atores do sistema e solicitou a atualização do diagrama para contemplar a proposta completa do PausaAtiva. |
| Diagrama de Classes | A primeira representação não contemplava completamente a estrutura planejada para o sistema, pois também considerava uma visão limitada ao MVP, deixando de incluir elementos importantes relacionados às funcionalidades e à organização do aplicativo. | O grupo complementou as informações fornecidas à IA e revisou as classes, atributos e relacionamentos para que representassem melhor a estrutura completa do projeto. |
| Modelo do Banco de Dados Firebase | Não foram identificados problemas relevantes na estrutura gerada. | O grupo realizou a conferência do modelo e verificou sua coerência com as necessidades e funcionalidades previstas para o aplicativo. |
| Modelo do Banco de Dados — Firestore e Dart | Não foram identificados problemas relevantes na correspondência entre a estrutura do Firestore e as classes Dart. | O grupo revisou a representação e verificou a consistência entre os campos, tipos de dados e classes correspondentes. |
| Quadro e sprints da Unidade II | A primeira organização misturou tarefas de README e CHANGELOG com o trabalho de implementação, e a issue pai do Flutter sumiu do filtro da sprint de hoje. Os PDFs técnicos também divergiam do repositório: um pedia Firebase Cloud Messaging para a pausa, outro sugeria adiar em 5 minutos e incluir o passo de levantar e caminhar. | Caio comparou o quadro com o plano do grupo. As tarefas que só pediam README ou CHANGELOG foram encerradas, porque esse registro entra no commit de quem implementa. A issue do Flutter voltou para a aba de 11/11. Nas issues de implementação, a regra escrita do repositório ficou explícita: notificação local, adiamento de 10 minutos e quatro alongamentos sentados. |

## 5. Processo de validação

Após a geração dos materiais, o grupo realizou a revisão das informações considerando:

- Coerência com os requisitos funcionais e não funcionais do PausaAtiva.
- Compatibilidade entre os diagramas e a proposta completa do aplicativo.
- Consistência entre as classes Dart e a estrutura planejada no Firestore.
- Identificação de informações duplicadas, relacionamentos incorretos ou elementos desnecessários.
- Clareza e padronização das representações.

As inconsistências identificadas nos diagramas foram analisadas e corrigidas pelo grupo antes da inclusão dos materiais na documentação do projeto.

## 6. Considerações finais

A utilização da Inteligência Artificial contribuiu para agilizar a elaboração e a organização dos diagramas, dos modelos e do quadro da Unidade II do PausaAtiva. Entretanto, os resultados não foram considerados definitivos sem revisão.

O grupo manteve a responsabilidade pela análise crítica, validação das informações e realização dos ajustes necessários, garantindo que os materiais estivessem alinhados à proposta e aos requisitos do aplicativo.
