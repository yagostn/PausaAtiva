# ATIVIDADE 01 — ANÁLISE DO ESTUDO DE CASO

## Projeto: PausaAtiva

*Disciplina:* Programação para Dispositivos Móveis  
*Projeto:* PausaAtiva  
*Integrantes:* Antonio Henrique, Caio Machado, João Vitor Mendonça, João Pedro Oliveira e Yago Santana.

O *PausaAtiva* é um aplicativo mobile voltado a trabalhadores que permanecem longos períodos sentados. Sua proposta é incentivar pequenas pausas durante a jornada, orientar alongamentos rápidos e contribuir para hábitos relacionados à postura e à ergonomia. A solução foi concebida para ser simples, discreta e adequada ao ambiente profissional.

---

## 2.1 Problema

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
## 2.2 Público e usuários

O estudo de caso aponta um público principal — o trabalhador que permanece longos períodos sentado — e, no roadmap, um público institucional (empresa / RH) que **não** é usuário do MVP. A análise abaixo interpreta esses públicos em vez de apenas listá-los.

### Trabalhador em jornada sentada (usuário principal)

- **Quem é:** profissional que passa a maior parte do expediente em cadeira e tela (escritório, open space ou home office). É quem faz login, configura intervalos e usa as quatro telas (Timer, Alongamentos, Pausas, Relatório).
- **Relação com o aplicativo:** é o dono da experiência. O app existe para ele, não para a chefia. Ele configura a própria jornada, recebe o lembrete e decide se cumpre a pausa. Os dados de histórico e relatório são pessoais.
- **Necessidades:** lembrete no momento certo; pausa curta o suficiente para caber entre tarefas; alongamento que dá para fazer no posto de trabalho; acompanhar se as pausas realmente aconteceram; garantia de que o app não vira ferramenta de fiscalização.
- **Situação de uso:** durante o expediente, muitas vezes com atenção na tarefa principal e o celular ao lado. A interação precisa ser rápida (iniciar/pausar o timer, seguir um exercício, dispensar o lembrete). Em mesa compartilhada, som e animação chamativa prejudicam a adoção.

### Variação do mesmo público: escritório compartilhado versus home office

Não são dois aplicativos, mas duas condições que mudam o projeto:

| | Escritório / open space | Home office |
|---|---|---|
| Pressão social | Alta: colega ouve o alarme e vê a tela | Menor, mas há reunião online |
| Tipo de lembrete | Silencioso ou vibração como padrão | Som discreto pode ser aceitável |
| Alongamento | Precisa caber na cadeira, sem “espetáculo” | Um pouco mais de espaço, ainda curto |
| Privacidade | Relatório e meta não devem saltar na tela principal | Mesma regra: o app não monitora o que a pessoa faz no PC |

Essa distinção explica decisões já citadas no caso: notificação discreta, quatro telas enxutas e a proibição explícita de monitorar produtividade.

### Empresa e RH (público citado no roadmap, fora do MVP)

- **Quem é:** organização que, em versões futuras, poderia ter gestão de funcionários, dashboard e relatórios corporativos anônimos.
- **Relação com o aplicativo hoje:** indireta. No MVP o app é individual (conta do trabalhador, dados da pessoa, timer local). Tratar RH como usuário agora invertiria a proposta de valor e chocaria com a restrição de privacidade.
- **Necessidade futura (se existir):** ver adesão a pausas de forma agregada e anônima, sem identificar o que cada um faz na máquina.
- **Situação de uso:** não é o celular do trabalhador no meio da tarde; é um painel posterior. Por isso não deve guiar as quatro telas atuais.

**Implicação para o desenvolvimento:** projetar autenticação, armazenamento e interface para o trabalhador como único usuário da versão 1.0. Qualquer dado extra (quais apps está usando, quanto produz) está fora do problema e fora do contrato de confiança descrito no estudo de caso.

---
## 2.3 Contexto de uso

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
- **Dispositivo modesto e secundário.** O estudo de caso fixa Android 7.0 (API 24) como piso. Isso não é só um número de compatibilidade: implica aparelhos antigos, com pouca memória e bateria já desgastada. Um timer que roda em segundo plano o dia inteiro precisa ser barato em consumo, ou o próprio sistema o encerra — e o usuário perde a pausa sem entender por quê.
- **Iluminação fora de controle.** O estudo de caso não trata de iluminação, mas os ambientes que ele descreve variam muito: sala com luz fria e forte, mesa perto de janela com reflexo na tela, home office à noite com luz baixa. Como a leitura acontece em segundos e de relance, o contraste do texto e do contador precisa se sustentar nos dois extremos, e a informação não pode depender apenas de cor — o estado do timer também tem de ser legível por texto, forma ou posição.
- **Ausência de urgência — e é justamente esse o ponto.** O estudo de caso não descreve nenhuma situação de emergência, e essa constatação tem consequência de projeto. O lembrete de pausa é a interrupção de **menor** prioridade na tela do trabalhador: ele sempre perde para uma ligação, uma reunião ou um prazo. Por isso não cabe alerta em tela cheia, som insistente ou repetição até o usuário responder — padrões legítimos num app de saúde emergencial e destrutivos aqui. O lembrete deve poder ser ignorado sem culpa e sem penalidade, e voltar no próximo ciclo.

**Fluxo real, não o fluxo do menu**

O caminho feliz do caso não é “visitar as quatro abas”. É um laço curto, repetido várias vezes por dia:

Login (primeira vez) → configurar intervalo, duração, tipo de lembrete e horário → deixar o timer correr em segundo plano → receber notificação discreta → abrir o guia de alongamento (ou só encerrar a pausa) → registrar a conclusão → voltar ao trabalho.

Alongar, Pausas e Relatório sustentam o hábito (orientação, histórico, meta, PDF). Eles não podem atrasar o laço principal. Se a configuração inicial for longa ou o primeiro lembrete for invasivo, o contexto de uso mata o produto antes da segunda pausa.

**Implicação para o desenvolvimento:** tratar o expediente como ambiente hostil à interrupção. Priorizar persistência do timer, notificação local configurável (ver 2.7, *Notificações*), funcionamento sem internet e interface que se resolve em segundos — em vez de telas densas, fluxos longos de onboarding ou qualquer recurso que exija atenção contínua no celular.

---
## 2.4 Objetivo e proposta de valor

**O que o aplicativo pretende oferecer**

O estudo de caso resume o produto em uma frase: *"o colega de trabalho que te lembra de levantar da cadeira antes que sua coluna grite"*. Lida como definição de escopo, ela diz três coisas. O PausaAtiva é um **colega**, não um supervisor — quem decide se a pausa acontece é o trabalhador. Ele age **antes** do sintoma, o que o posiciona na prevenção e não no tratamento. E ele atua **na cadeira**, dentro do expediente, não na academia depois do trabalho.

Na prática, o que o aplicativo entrega não é um cronômetro. É um ciclo curto que se repete várias vezes por dia — lembrar, orientar, registrar — e que o usuário não precisa se lembrar de acionar. Os objetivos listados no estudo de caso (incentivar pausas, prevenir desconfortos, promover hábitos ergonômicos, orientar alongamentos e acompanhar a realização) não são cinco funcionalidades paralelas: são um único objetivo, visto em etapas diferentes do mesmo ciclo.

**Qual benefício o usuário recebe**

O benefício imediato é **não depender da própria memória nem da própria disciplina** para cuidar da postura durante o trabalho. Quem passa o dia sentado já sabe que deveria levantar; o que falta não é informação, é algo que interrompa no momento certo e de forma aceitável no ambiente profissional. O aplicativo assume essa responsabilidade no lugar do usuário.

O benefício de médio prazo é **enxergar o próprio hábito**. Histórico, relatório semanal e meta transformam uma intenção vaga ("preciso me mexer mais") em um dado verificável. A exportação em PDF estende esse benefício para fora do aplicativo, mas **por iniciativa do usuário**: é ele quem decide levar o consolidado a um médico ou ao RH.

**A proposta de valor também está no que o aplicativo se recusa a fazer**

Aqui está a diferença em relação a um alarme comum ou a um aplicativo de produtividade. O estudo de caso lista explicitamente o que o PausaAtiva **não** deve monitorar: aplicativos utilizados, navegação, teclas pressionadas, capturas de tela, produtividade e conteúdo acessado.

Essa recusa não é uma restrição técnica lateral — é parte do valor entregue. Um aplicativo instalado no celular de quem trabalha só é adotado se não for percebido como ferramenta de fiscalização. O mesmo raciocínio vale para a discrição dos lembretes: um alarme alto em um open space não é apenas ruído de interface, é constrangimento, e o usuário resolve isso desligando a notificação. Nos dois casos, **o aplicativo perde o usuário no momento em que passa a incomodar** — seja incomodando o corpo social ao redor, seja incomodando a sensação de privacidade.

**Implicação para o desenvolvimento:** o valor do PausaAtiva se mede pela pausa que efetivamente aconteceu, não pela quantidade de recursos na tela. Isso ordena as prioridades: primeiro a confiabilidade do ciclo — timer que sobrevive ao fechamento do aplicativo, lembrete que chega e não constrange, alongamento que cabe no posto de trabalho —, depois a leitura desse histórico. Qualquer recurso que aumente a fricção do ciclo, ou que aproxime o aplicativo da vigilância, reduz a proposta de valor mesmo parecendo uma funcionalidade a mais.

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

### Tom da experiência do usuário

O tom da interface é o que o aplicativo **diz**; o tom da experiência é como ele **se comporta** ao longo do dia. São coisas diferentes, e a segunda pesa mais na adesão: um texto gentil não compensa um lembrete que insiste.

A experiência do PausaAtiva deve ser **discreta por padrão e permissiva diante da recusa**. Na prática:

- **O aplicativo entra e sai de cena rápido.** Ele aparece quando o intervalo termina e desaparece assim que a pausa é concluída ou dispensada. Não tenta reter o usuário com telas extras, sugestões ou conteúdo adicional.
- **Recusar é uma resposta legítima.** Se a pessoa ignora o lembrete, o aplicativo não repete, não cobra e não registra aquilo como falha. Ele apenas volta no ciclo seguinte. Nada de "você perdeu 4 pausas esta semana".
- **A conquista é sóbria.** Concluir uma pausa gera uma confirmação discreta, não uma comemoração. Animação chamativa ou som de vitória trai o ambiente compartilhado descrito em 2.3 — e o roadmap deixa a gamificação para versões futuras.
- **O erro nunca é do usuário.** Quando algo não acontece (lembrete atrasado, dado não sincronizado), a mensagem explica o estado sem atribuir culpa.

**Implicação para o desenvolvimento:** essa combinação — interface tranquila e comportamento que aceita ser ignorado — é o que sustenta a metáfora do "colega de trabalho". Um colega lembra uma vez e respeita a resposta. Um aplicativo que insiste vira alarme, e alarme se desliga. Por isso a experiência deve ser projetada assumindo que **a maior parte dos lembretes será dispensada**, e que isso é um resultado aceitável, não um problema a corrigir com mais insistência.

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
| **Dicas ergonômicas** | Orientar a postura no momento em que o aplicativo já está aberto, alinhado à NR-17, sem virar conteúdo separado que ninguém lê. |
| **Notificações discretas** | Lembrar o usuário sem interromper excessivamente o trabalho. |
| **Adiar lembrete** *(proposta do grupo)* | Permitir que o usuário finalize uma atividade antes da pausa. |
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

### Leitura das funcionalidades: por que cada bloco existe

As funcionalidades acima não formam uma lista de desejos. Elas fecham o ciclo de adesão descrito em 2.1 e cabem no contexto de 2.3.

**Núcleo: lembrar, pausar, orientar, registrar**

Timer, notificação discreta, guia de alongamento, dicas ergonômicas e configuração da jornada são o motor do hábito, e cada um falha de um jeito específico. Sem persistência após o fechamento do aplicativo, o lembrete some no primeiro bloqueio de tela. Se a notificação for invasiva, o usuário desliga o canal — e o produto acaba ali. Se o alongamento exigir sair do posto, a pausa é adiada indefinidamente. E uma configuração mal ajustada (intervalo curto demais, horário errado) transforma o lembrete em interrupção inútil. Esse conjunto responde à necessidade central identificada em 2.1: ser lembrado e conseguir cumprir a pausa em poucos minutos, sem exposição.

**Sustentação: ver que as pausas aconteceram**

Histórico, relatório semanal (gráfico, tempo total e meta) e exportação em PDF não iniciam pausa nenhuma. Eles fecham o ciclo de confiança: a pessoa verifica se o hábito existe de fato e, se quiser, leva o consolidado adiante por iniciativa própria. Por isso o relatório vive em aba separada e não na tela inicial, que pertence ao timer.

**Infraestrutura que o usuário não vê**

- **Armazenamento local e modo offline.** Timer, configurações e histórico precisam sobreviver sem rede. A sincronização com o Cloud Firestore é complemento, não pré-requisito do ciclo.
- **Quatro abas (Timer, Alongar, Pausas, Relatório).** Recortam o produto no essencial. Mais telas no primeiro release diluiriam o laço curto descrito em 2.3.
- **Conta individual (Firebase Authentication).** O login existe para separar o dado de cada pessoa. Não implica, na versão 1.0, painel da empresa nem leitura do que o trabalhador faz no computador.

**O que deliberadamente não é funcionalidade agora**

Monitorar aplicativos, teclado, navegação ou produtividade; gamificação visível; gestão de funcionários; relatórios corporativos. O estudo de caso cita parte disso como restrição de privacidade e parte como evolução futura. Antecipar esses itens inverteria o usuário — de trabalhador para fiscalizado — e quebraria o contrato descrito em 2.4.

**Implicação para o desenvolvimento:** implementar primeiro o núcleo timer–notificação–alongamento–configuração, com persistência local. Relatório e PDF vêm em seguida, como leitura do que já foi registrado.

---

## 2.7 Restrições e condições

### Quantidade de telas

O aplicativo deverá possuir quatro telas principais:

- Timer;
- Alongamentos;
- Pausas;
- Relatório.

### Plataforma

A primeira versão será destinada ao **Android**, com suporte inicial ao **Android 7.0 / API 24 ou superior**.

### Conectividade

As funções essenciais deverão continuar disponíveis offline.

### Armazenamento

Informações necessárias ao timer, configurações e histórico deverão ser persistidas localmente.

### Privacidade

O PausaAtiva deverá coletar somente informações necessárias para sua própria experiência.

O aplicativo **não deverá monitorar**:

- Aplicativos utilizados pelo trabalhador;
- Histórico de navegação;
- Teclas pressionadas;
- Capturas de tela;
- Produtividade;
- Conteúdo acessado.

O objetivo é acompanhar pausas e configurações ergonômicas, e não vigiar o trabalhador.

### Navegação

A navegação entre as quatro áreas principais deverá ser simples e rápida.

### Número de interações

O estudo de caso não fixa um limite numérico, mas o contexto analisado em 2.3 impõe um: o aplicativo é usado durante o expediente, com atenção dividida. Assumimos como restrição de projeto que as ações do ciclo principal se resolvam em **até dois toques** a partir da tela inicial ou da notificação — iniciar o timer, abrir a sequência de alongamento a partir do lembrete, concluir a pausa. A configuração inicial pode ser mais longa, por ser feita uma única vez, mas não deve bloquear o primeiro uso: o aplicativo precisa funcionar com valores padrão antes de qualquer ajuste.

### Tamanho do aplicativo

Também não há número definido no estudo de caso. A restrição vem do público e do dispositivo: com suporte a partir do Android 7.0, parte dos aparelhos terá pouco espaço livre. Como o aplicativo resolve um problema de saúde que o usuário ainda não considera urgente, um download pesado é motivo suficiente para a desistência antes da instalação. Isso desaconselha vídeo nas sequências de alongamento — as ilustrações estáticas previstas no estudo de caso já atendem — e recomenda manter os recursos visuais enxutos.

### Acessibilidade

O estudo de caso não trata de acessibilidade de forma explícita, mas as condições que ele descreve já a exigem, e o próprio propósito do produto reforça isso: um aplicativo voltado a desconforto físico não pode excluir quem já convive com alguma limitação.

- **Não depender apenas de cor.** O estado do timer (rodando, pausado, concluído) precisa ser identificável por texto, forma ou posição, e não só pela cor — condição que também resolve a variação de iluminação analisada em 2.3.
- **Área de toque confortável.** Os controles do ciclo principal são acionados de relance, muitas vezes com o aparelho na mesa. Alvos pequenos aumentam o erro justamente no momento de menor atenção.
- **Contraste e tipografia legíveis.** Texto pequeno ou de baixo contraste inviabiliza a leitura em segundos que o contexto exige.
- **Compatibilidade com leitor de tela.** Ícones sem rótulo textual (as quatro abas, os controles do timer) precisam de descrição associada.
- **Não depender de som.** Como o lembrete silencioso é o padrão previsto, nenhuma informação essencial pode existir apenas em áudio — o que atende igualmente quem tem perda auditiva e quem trabalha em ambiente compartilhado.

### Notificações

Os lembretes precisam ser discretos para evitar interrupções excessivas durante o trabalho.

**Restrição derivada: o lembrete não pode depender de conexão.** O estudo de caso indica o Firebase Cloud Messaging (FCM) como serviço de notificações push e, ao mesmo tempo, exige funcionamento offline das funções essenciais. Os dois requisitos entram em conflito no ponto mais crítico do produto: uma notificação push não chega sem internet, e o lembrete de pausa é justamente a função que não pode falhar quando a rede cai.

A consequência para o projeto é que o lembrete do ciclo de pausas precisa ser uma **notificação local agendada no próprio dispositivo**, disparada pelo timer, sem depender de servidor. O FCM permanece útil como complemento — avisos gerais, mensagens do sistema ou recursos futuros que envolvam servidor —, mas não pode ser o mecanismo responsável pelo lembrete principal. Essa é a restrição técnica mais determinante identificada nesta análise, porque contraria a leitura mais direta do estudo de caso.

### Duração dos alongamentos

Os alongamentos devem ser rápidos, com sequências de aproximadamente até 3 minutos.

### Responsividade

O layout não deverá depender de uma largura fixa e deverá se adaptar corretamente aos diferentes tamanhos de tela.

### Permissões

O aplicativo deverá solicitar somente as permissões realmente necessárias para seu funcionamento.

---

## 2.8 Pontos de atenção

Para o grupo, três aspectos são essenciais para o sucesso do PausaAtiva.

### 1. Notificações realmente discretas

Esse aspecto é fundamental porque o aplicativo será utilizado durante o trabalho.

Se os lembretes forem muito frequentes, barulhentos ou invasivos, o usuário poderá se sentir incomodado e abandonar a solução.

O aplicativo precisa encontrar um equilíbrio entre:

**Lembrar o usuário × Não atrapalhar sua atividade**

A possibilidade de configurar intervalos, tipos de alerta e adiar uma pausa contribui para esse equilíbrio.

### 2. Funcionamento confiável do timer e modo offline

O timer é um dos elementos centrais do PausaAtiva.

O estado da contagem e o horário da próxima pausa precisam ser preservados mesmo quando o aplicativo for fechado ou permanecer em segundo plano.

Além disso, as funções principais devem continuar disponíveis mesmo sem conexão com a internet.

### 3. Simplicidade e facilidade de uso

O usuário estará trabalhando enquanto utiliza o aplicativo.

Por isso, o fluxo precisa exigir o mínimo possível de interações.

O fluxo principal deve ser:

**Iniciar Timer → Receber lembrete → Fazer alongamento → Concluir pausa → Continuar trabalhando**

Quanto menor o esforço necessário para utilizar o aplicativo, maior a possibilidade de ele fazer parte da rotina diária do usuário.

---

## Conclusão

A análise do estudo de caso demonstra que o **PausaAtiva** não deve ser tratado apenas como um cronômetro, mas como uma ferramenta de apoio à rotina ergonômica do trabalhador.

Seu principal valor está na combinação entre:

- Timer;
- Lembretes discretos;
- Exercícios guiados;
- Personalização da jornada;
- Histórico;
- Acompanhamento do progresso.

Para que a solução seja bem-sucedida, o desenvolvimento deverá preservar principalmente a **simplicidade, confiabilidade do timer, funcionamento offline e privacidade**.

O aplicativo deverá ajudar o usuário a inserir pequenas pausas em sua rotina profissional sem se transformar em uma distração ou em uma ferramenta de vigilância.