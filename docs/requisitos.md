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
