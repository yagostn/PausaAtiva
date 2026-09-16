# Requisitos do Sistema — PausaAtiva

Este documento reúne os requisitos do aplicativo PausaAtiva definidos a partir do estudo de caso, da pesquisa, do benchmark e das personas do projeto.

## 2.1 Funcionalidades

### F01 — Timer de Pausa Ativa

**Descrição:**  
Permite iniciar uma contagem regressiva até a próxima pausa, além de pausar e continuar o temporizador durante a jornada de trabalho.

**Necessidade do usuário atendida:**  
Ajuda trabalhadores que permanecem longos períodos sentados e acabam esquecendo de realizar pausas durante a rotina.

**Justificativa:**  
É uma funcionalidade central do PausaAtiva, pois controla os intervalos de trabalho e estimula a realização regular de pequenas pausas ergonômicas.

### F02 — Configuração dos Intervalos de Pausa

**Descrição:**  
Permite configurar o intervalo entre as pausas, a duração de cada pausa, o horário de trabalho e os dias em que os lembretes estarão ativos.

**Necessidade do usuário atendida:**  
Permite que cada trabalhador adapte o aplicativo à própria jornada e rotina profissional.

**Justificativa:**  
Os usuários possuem horários e rotinas diferentes. A personalização evita lembretes inadequados e torna o aplicativo mais útil no ambiente de trabalho.

### F03 — Notificações Discretas de Pausa

**Descrição:**  
Envia lembretes suaves e silenciosos quando chega o momento de realizar uma pausa ativa.

**Necessidade do usuário atendida:**  
Lembra o trabalhador de interromper brevemente períodos prolongados de trabalho sem causar distrações excessivas.

**Justificativa:**  
O público do aplicativo trabalha em ambientes profissionais, reuniões e home office. Por isso, os lembretes precisam cumprir sua função sem se tornarem incômodos.

### F04 — Guia Visual de Alongamentos

**Descrição:**  
Apresenta exercícios rápidos de alongamento com ilustrações, instruções, cronômetro, indicação de progresso e próximo exercício.

**Necessidade do usuário atendida:**  
Orienta o trabalhador sobre quais movimentos realizar durante uma pausa ativa.

**Justificativa:**  
Apenas lembrar o usuário de fazer uma pausa não garante que ele saiba quais exercícios realizar. O guia transforma a pausa em uma atividade orientada, rápida e simples.

### F05 — Dicas e Alertas de Postura

**Descrição:**  
Apresenta orientações ergonômicas curtas relacionadas à postura, à posição da tela e à organização do ambiente de trabalho.

**Necessidade do usuário atendida:**  
Auxilia usuários que permanecem muito tempo na mesma posição e podem adotar posturas inadequadas durante a jornada.

**Justificativa:**  
A proposta do PausaAtiva não se limita às pausas, mas também envolve ergonomia preventiva e a formação de hábitos posturais mais saudáveis.

### F06 — Registro e Histórico de Pausas

**Descrição:**  
Registra as pausas realizadas pelo usuário e permite consultar o histórico de atividades.

**Necessidade do usuário atendida:**  
Permite acompanhar se as pausas estão sendo realizadas regularmente ao longo dos dias.

**Justificativa:**  
O histórico possibilita que o usuário visualize a própria adesão às pausas sem monitorar produtividade, navegação ou atividades executadas no dispositivo.

### F07 — Relatório Semanal

**Descrição:**  
Apresenta a quantidade de pausas concluídas, o tempo total de pausa, a comparação entre os dias, um gráfico de desempenho e a meta semanal.

**Necessidade do usuário atendida:**  
Ajuda o trabalhador a compreender seus hábitos de pausa ao longo da semana.

**Justificativa:**  
O relatório transforma os registros individuais em informações fáceis de interpretar, permitindo que o usuário acompanhe sua regularidade e evolução.

### F08 — Exportação do Relatório em PDF

**Descrição:**  
Permite gerar e exportar localmente um relatório das pausas realizadas em formato PDF.

**Necessidade do usuário atendida:**  
Permite conservar ou compartilhar as informações registradas no aplicativo de maneira simples.

**Justificativa:**  
A exportação amplia a utilidade dos relatórios e integra o escopo previsto para o MVP do PausaAtiva.

## 2.2 Requisitos funcionais

Os requisitos funcionais abaixo transformam as funcionalidades principais do PausaAtiva em comportamentos objetivos que o sistema deverá executar.

### RF01 — Cadastro de usuário
O sistema deve permitir que o usuário crie uma conta informando os dados necessários para autenticação e uso do aplicativo.

### RF02 — Login de usuário
O sistema deve permitir que usuários cadastrados realizem login para acessar suas configurações, histórico e demais dados associados à conta.

### RF03 — Iniciar timer de pausa
O sistema deve permitir que o usuário inicie uma contagem regressiva para a próxima pausa ativa.

### RF04 — Pausar e continuar timer
O sistema deve permitir que o usuário pause e continue a contagem regressiva do timer durante a jornada de trabalho.

### RF05 — Configurar intervalo entre pausas
O sistema deve permitir que o usuário configure o intervalo de tempo entre uma pausa ativa e outra.

### RF06 — Configurar duração da pausa
O sistema deve permitir que o usuário configure a duração das pausas, respeitando a proposta de alongamentos rápidos de até três minutos.

### RF07 — Configurar jornada e dias ativos
O sistema deve permitir que o usuário defina o horário de início e fim da jornada de trabalho e selecione os dias em que os lembretes de pausa ficarão ativos.

### RF08 — Configurar tipo de lembrete
O sistema deve permitir que o usuário escolha o tipo de lembrete utilizado para avisar sobre o início de uma pausa, priorizando opções discretas e silenciosas.

### RF09 — Enviar notificação de pausa
O sistema deve emitir uma notificação quando o intervalo configurado pelo usuário for atingido, informando que é o momento de realizar uma pausa ativa.

### RF10 — Exibir guia de alongamentos
O sistema deve apresentar uma sequência de alongamentos rápidos com nome do exercício, ilustração, instruções e indicação do próximo movimento.

### RF11 — Controlar tempo dos alongamentos
O sistema deve exibir um cronômetro para cada exercício e indicar o progresso da sequência de alongamentos durante a pausa ativa.

### RF12 — Exibir dicas ergonômicas
O sistema deve apresentar orientações curtas sobre postura, posição da tela e ergonomia durante o uso do aplicativo.

### RF13 — Registrar pausa realizada
O sistema deve registrar a conclusão de cada pausa ativa, armazenando as informações necessárias para composição do histórico e dos relatórios.

### RF14 — Consultar histórico de pausas
O sistema deve permitir que o usuário consulte o histórico das pausas realizadas anteriormente.

### RF15 — Gerar relatório semanal
O sistema deve gerar um relatório semanal contendo quantidade de pausas concluídas, tempo total de pausas, comparação entre dias, gráfico e acompanhamento da meta semanal.

### RF16 — Exportar relatório em PDF
O sistema deve permitir que o usuário gere e exporte localmente o relatório de pausas em formato PDF.

### RF17 — Manter funções essenciais offline
O sistema deve permitir o funcionamento do timer, das configurações, dos alongamentos e do registro das pausas mesmo quando o dispositivo estiver sem conexão com a internet.

### RF18 — Sincronizar dados quando houver conexão
O sistema deve sincronizar com o Firebase os dados armazenados localmente quando houver conexão disponível, preservando o histórico e as configurações do usuário.

## 2.3 Requisitos não funcionais

### RNF01 — Usabilidade
O aplicativo deve permitir que o usuário inicie a funcionalidade principal (Timer de Pausa) em, no máximo, 3 toques a partir da abertura do app.

### RNF02 — Acessibilidade e Identidade Visual
A interface deve utilizar tons sóbrios (azul e verde corporativo) com alto contraste para leitura em ambientes de escritório e home office, além de contar com ilustrações claras nos alongamentos.

### RNF03 — Segurança e Privacidade (LGPD)
O aplicativo não deve monitorar programas abertos, teclas digitadas, tela ou produtividade do usuário, limitando-se a armazenar apenas as configurações e histórico de pausas.

### RNF04 — Conectividade (Offline-First)
As funções essenciais (Timer, Alongamentos e Notificações locais) devem funcionar sem conexão com a internet. A sincronização com o Firebase ocorrerá apenas quando houver conexão disponível.

### RNF05 — Desempenho e Discreção
Os alertas de pausa devem utilizar notificações locais com avisos auditivos e visuais suaves para evitar interrupções abruptas ou ansiedade durante o trabalho.

### RNF06 — Compatibilidade
O aplicativo deve ser compatível com dispositivos móveis rodando o sistema operacional Android 7.0 (API nível 24) ou superior.

## 2.4 CRUD

O PausaAtiva persiste somente o que a experiência precisa: a conta, as preferências da jornada e as pausas concluídas. Relatório, PDF, guia de alongamentos e dicas não são cadastros do usuário. Onde uma operação não se aplica, a justificativa indica por que ela fugiria do que já está definido nos requisitos funcionais e não funcionais.

### Conta do usuário

| Operação | Aplicável | Descrição |
|---|---|---|
| Criar | Sim | O cadastro (RF01) cria a conta que vincula configurações e histórico a um trabalhador. |
| Consultar | Sim | O login (RF02) recupera a conta e os dados associados a ela. |
| Atualizar | Não | O MVP não prevê tela de perfil nem edição de e-mail ou senha. A conta serve para autenticar e separar os dados de cada pessoa. |
| Excluir | Sim | O RNF03 limita a coleta e remete à LGPD. O trabalhador precisa poder apagar a conta e, com ela, as configurações e o histórico. Sem essa operação, o aplicativo reteria dado pessoal sem saída para quem é dono dele. |

### Configurações de pausa

Intervalo entre pausas, duração, horário de início e fim da jornada, dias ativos e tipo de lembrete.

| Operação | Aplicável | Descrição |
|---|---|---|
| Criar | Sim | Na primeira utilização o sistema grava as preferências. Antes de qualquer ajuste, valem valores padrão, para o timer funcionar sem bloquear o primeiro uso. |
| Consultar | Sim | O timer e a notificação de pausa leem essas preferências para decidir quando lembrar e de que forma. |
| Atualizar | Sim | A rotina muda ao longo da semana. Os requisitos RF05 a RF08 existem para o usuário substituir intervalo, duração, jornada, dias ativos e tipo de lembrete. |
| Excluir | Não | Há um único conjunto de configurações por conta. Apagá-lo deixaria o timer sem regra de funcionamento. Voltar ao padrão é uma atualização, não uma exclusão. |

### Registro de pausas

| Operação | Aplicável | Descrição |
|---|---|---|
| Criar | Sim | Ao concluir uma pausa, o sistema grava o registro que alimenta o histórico e o relatório (RF13). |
| Consultar | Sim | O histórico (RF14), o relatório semanal (RF15) e a exportação em PDF (RF16) apenas leem esses registros. |
| Atualizar | Não | A pausa concluída é um fato. Alterar data, duração ou quantidade mudaria o relatório e a meta, que existem para o usuário enxergar o hábito como ele ocorreu. Lembrete ignorado não gera registro, então não há dado a corrigir por edição. |
| Excluir | Não | O histórico não se apaga registro a registro. A saída para os dados pessoais é a exclusão da conta, que remove configurações e histórico juntos. Apagar pausas isoladas permitiria ajustar o relatório depois do fato. |

### Relatório semanal e PDF

O relatório não é um dado cadastrado. Ele é calculado a partir dos registros de pausa no momento da consulta.

| Operação | Aplicável | Descrição |
|---|---|---|
| Criar | Não | Não há cadastro de relatório. O PDF (RF16) é um arquivo gerado no dispositivo quando o usuário pede a exportação, não um registro mantido pelo aplicativo. |
| Consultar | Sim | O usuário consulta o consolidado da semana na aba de relatório e o arquivo depois de exportar. |
| Atualizar | Não | O consolidado não se edita. Uma nova pausa registrada já entra no cálculo da consulta seguinte. |
| Excluir | Não | Não existe registro de relatório para apagar. O PDF exportado fica no aparelho, fora do armazenamento do aplicativo. |

### Guia de alongamentos e dicas ergonômicas

São conteúdo do aplicativo, não dado do usuário.

| Operação | Aplicável | Descrição |
|---|---|---|
| Criar | Não | Exercícios e dicas acompanham o aplicativo. O usuário não cadastra alongamento. |
| Consultar | Sim | O guia é exibido durante a pausa (RF10 e RF11) e as dicas aparecem no uso do aplicativo (RF12). |
| Atualizar | Não | Mudar o conteúdo do guia é publicação de nova versão do aplicativo, não operação do usuário na jornada. |
| Excluir | Não | Remover o guia deixaria a pausa sem orientação, que faz parte da proposta do PausaAtiva. |

## 2.5 Priorização das Funcionalidades

### As funcionalidades foram classificadas de acordo com sua importância para a proposta principal do aplicativo **PausaAtiva**:

| Código | Funcionalidade | Prioridade | Justificativa |
|---|---|---|---|
| F01 | Timer de Pausa Ativa | **Essencial** | É a funcionalidade central do aplicativo, responsável por controlar o tempo de trabalho e indicar quando o usuário deve realizar uma pausa. |
| F02 | Configuração dos Intervalos de Pausa | **Essencial** | Permite adaptar os intervalos, duração das pausas e horário de trabalho à rotina do usuário, sendo fundamental para o funcionamento personalizado do timer. |
| F03 | Notificações Discretas de Pausa | **Essencial** | Tem como objetivo lembrar o usuário de realizar as pausas no momento adequado, evitando que ele permaneça longos períodos sem interromper o trabalho. |
| F04 | Guia Visual de Alongamentos | **Essencial** | Orienta o usuário durante a pausa, apresentando os exercícios e seus respectivos tempos, fazendo parte diretamente da proposta de pausas ativas. |
| F05 | Dicas e Alertas de Postura | **Importante** | Contribui para a prevenção de problemas ergonômicos e melhora os hábitos durante o trabalho, mas o aplicativo ainda cumpre sua função principal sem esse recurso. |
| F06 | Registro e Histórico de Pausas | **Importante** | Permite acompanhar as pausas realizadas e verificar a adesão do usuário, agregando valor ao acompanhamento dos hábitos. |
| F07 | Relatório Semanal | **Importante** | Facilita a visualização da frequência e do tempo dedicado às pausas, ajudando o usuário a acompanhar seus hábitos ao longo da semana. |
| F08 | Exportação do Relatório em PDF | **Secundária** | É um recurso complementar que permite salvar ou compartilhar os dados do relatório. O acompanhamento pode ser realizado diretamente pelo aplicativo. |
