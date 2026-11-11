# Fluxo de navegação real do aplicativo (MVP)

Este documento descreve o caminho real das telas no emulador, considerando o escopo atual do MVP.

## 1) Entrada no app

1. **Preload curto** (abertura rápida do app).
2. Se não houver sessão ativa, ir para **Login/Cadastro**.
3. Após autenticar, no **primeiro acesso**, abrir a **configuração inicial** (intervalo, duração da pausa, jornada e dias ativos).
4. Concluída a configuração inicial, abrir a tela principal de **Timer**.

## 2) Ciclo principal (Timer → Lembrete → Ação)

1. No **Timer**, o usuário inicia a contagem regressiva para a próxima pausa.
2. Durante a contagem, pode **pausar e retomar** o timer.
3. Quando o intervalo é atingido, o app dispara **notificação discreta** de pausa.
4. A partir do lembrete, o usuário pode:
   - **Alongar agora**: abre a sequência de alongamentos.
   - **Adiar 10 minutos**: reprograma o lembrete para +10 min.
   - **Dispensar até o próximo ciclo**: ignora a pausa atual e segue para o próximo intervalo.

## 3) Durante a pausa

1. Em **Alongar**, o usuário executa os exercícios guiados.
2. Ao final, pode:
   - **Concluir pausa** (gera registro no histórico).
   - **Encerrar sem gravar** (abandona a pausa sem registrar conclusão).

## 4) Pós-pausa e consulta de dados

1. Em **Histórico (Pausas)**, o usuário consulta as pausas concluídas.
2. Em **Relatório**, visualiza o consolidado semanal.
3. No relatório, pode **exportar PDF** localmente.

## 5) Conta e sessão

1. Em **Perfil**, o usuário acessa opções de conta.
2. Pode **sair** (logout).
3. Pode **excluir conta** (remoção dos dados da conta e histórico vinculado).

## 6) O que o protótipo desenhou e o app não fez (de propósito)

Itens mantidos fora do fluxo real do MVP por escopo e decisões de privacidade/foco no ciclo essencial (referência: `docs/estudo-de-caso.md`, seção 2.6):

- **Postura 92%** (indicador/gamificação de desempenho postural).
- **Streak** (sequência diária visível de gamificação).
- **Relatório anônimo de RH no caminho A** (visão corporativa fora do uso individual do MVP).
- **Login com Apple** (fora do escopo da primeira versão Android).
