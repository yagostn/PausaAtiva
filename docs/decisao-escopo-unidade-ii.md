# Decisão de escopo — Unidade II (PausaAtiva)

> **Status: proposta para deliberação do grupo — não aprovada.**  
> **Caminho proposto: A — aplicativo individual do trabalhador.**  
> Responsável pelo registro da proposta: **Yago Santana** (`@yagostn`). Data: **11/11/2026**.  
> Referências: [#1](https://github.com/yagostn/PausaAtiva/issues/1), [#20](https://github.com/yagostn/PausaAtiva/issues/20), [estudo de caso](estudo-de-caso.md) e [requisitos](requisitos.md).

## 1. Decisão proposta e justificativa

Adotar o **Caminho A**, recomendado pelo estudo de caso (seções 2.2 e 2.6): a versão 1.0 é destinada **exclusivamente ao trabalhador**, proprietário dos dados de sua conta. Cada pessoa acessa apenas o próprio perfil, configuração e histórico. O objetivo é promover pausas ativas, não monitorar desempenho.

**Incluído na Unidade II:** cadastro/login individual, timer e lembretes locais discretos, configuração da jornada, guia de alongamentos e dicas ergonômicas, registro de pausas concluídas, histórico, relatório semanal pessoal e exportação voluntária em PDF. O relatório é calculado a partir das pausas, sem coleção própria.

**Excluído da Unidade II:** empresa, equipe, RH/admin, painéis e indicadores corporativos, cartão de “relatório anônimo para o RH”, ranking, pontuação “Postura 92%”, sequências gamificadas e qualquer monitoramento de tela, teclado, navegação, aplicativos ou produtividade. O conteúdo divergente dos diagramas e do protótipo não amplia este escopo. Empresa/RH fica como possível evolução posterior, mediante nova decisão.

**Governança da decisão:** esta é uma **proposta documentada**, não uma aprovação atribuída aos demais integrantes. A implementação de coleções e regras de segurança no Firebase deve aguardar a confirmação do grupo na [#1](https://github.com/yagostn/PausaAtiva/issues/1). Após essa confirmação, atualizar este status para **A aprovado**, registrando data e participantes; somente então encerrar a [#13](https://github.com/yagostn/PausaAtiva/issues/13), com link para este documento. Se o grupo preferir B, revisar o escopo e o modelo **antes** de implementar Firestore.

## 2. Modelo único do trabalhador (proposto)

O Firebase Authentication autentica cada conta; o identificador `uid` emitido pelo Auth é a chave de vinculação dos documentos. O Cloud Firestore é a cópia remota sincronizada; dados essenciais existem primeiro no dispositivo.

| Caminho Firestore | Cardinalidade | Campos e tipos | Regras de domínio |
| --- | --- | --- | --- |
| `users/{uid}` | Um documento por conta | `name: string`, `email: string` | `uid` é o ID do Auth; não armazenar senha, empresa, cargo ou papel no caminho A. |
| `users/{uid}/settings/pause` | **Um** documento fixo por conta | `intervalMinutes: int`, `durationMinutes: int`, `reminderType: string`, `workdayStart: string`, `workdayEnd: string`, `activeDays: list<int>` | `intervalMinutes` ∈ {30,45,60,90}; `durationMinutes` ∈ {1,2,3}; `reminderType` ∈ {`silent`,`vibration`,`sound`}; horários em `HH:mm` local; `activeDays` usa 1=segunda até 7=domingo, sem repetição. |
| `users/{uid}/pauses/{pauseId}` | Zero a muitas pausas concluídas | `completedAt: timestamp`, `durationSeconds: int`, `label: string` | ID estável gerado localmente (para reenvio idempotente); `completedAt` é instante UTC, exibido no fuso local; duração positiva; registrar **apenas** pausas concluídas. |

### Exemplos de documentos

```json
// users/{uid}
{ "name": "Trabalhador", "email": "exemplo@dominio.com" }

// users/{uid}/settings/pause
{
  "intervalMinutes": 60,
  "durationMinutes": 2,
  "reminderType": "silent",
  "workdayStart": "09:00",
  "workdayEnd": "18:00",
  "activeDays": [1, 2, 3, 4, 5]
}

// users/{uid}/pauses/{pauseId}
{
  "completedAt": "2026-11-11T15:00:00Z",
  "durationSeconds": 120,
  "label": "Alongamento"
}
```

O último valor de `completedAt` é uma representação **JSON ilustrativa**; no Firestore será armazenado como `Timestamp`, não como string. Horários e dias são preferências locais da jornada; a definição de atravessamento de meia-noite deve ser validada antes da implementação (não presumir horário final anterior ao inicial).

**Exercícios** (nome, instruções, ilustrações e tempo indicado) são conteúdo versionado/distribuído com o aplicativo, **não** documentos pessoais do trabalhador nem cadastro por usuário. Relatórios semanais, gráficos e PDF são derivados de `pauses`; não persistir documentos de relatório ou PDF no Firestore.

## 3. Persistência local, modo offline e sincronização

1. **Antes da rede:** persistir no armazenamento privado do aplicativo uma cópia da configuração, o histórico das pausas concluídas e uma fila durável de operações pendentes, com `uid` associado. Não depender de respostas do Firestore para iniciar/continuar o ciclo.
2. **Timer e lembrete:** manter localmente o estado mínimo para reconstrução do timer após encerramento/reinício do app (por exemplo, instante de referência, estado e próxima pausa). Agendar **notificação local** para o intervalo; FCM/push remoto não controla o lembrete principal. Respeitar dias e horário de expediente.
3. **Escrita local primeiro:** ao concluir a pausa, gerar `pauseId` estável, registrar a pausa localmente e enfileirar o envio. Lembrete dispensado/ignorado não cria pausa. Alteração das preferências também é salva localmente antes da sincronização.
4. **Reconciliação:** ao retornar a conexão e haver sessão autenticada, enviar as operações pendentes ao caminho do próprio `uid`; `pauseId` estável evita duplicação em tentativas repetidas. Para configurações (um único documento), resolver edições offline com a versão local mais recente conforme política a ser testada; não sobrescrever silenciosamente alterações concorrentes sem uma regra explícita.
5. **Isolamento e privacidade:** não apresentar cache de uma conta depois do logout ou ao entrar em outra. A autenticação e a leitura/escrita remota exigem autorização, mas o timer local deve continuar quando a conexão cair. A exclusão da conta deverá apagar também documentos e dados locais associados, conforme requisitos de privacidade; o mecanismo de exclusão será definido na implementação.

**Contrato mínimo de segurança do Firestore (a implementar/testar na #5):** somente solicitações autenticadas cujo `request.auth.uid == uid` podem acessar os documentos sob `users/{uid}`, incluindo subcoleções; validar tipos/valores aceitos e impedir acesso entre usuários. Regras de segurança não ficam apenas na interface. Esta decisão **não** publica regras nem cria coleções.

## 4. Consequências e validação

- Uma configuração por conta, sem duplicar preferências em documentos de pausas.
- Pausas concluídas imutáveis para o histórico funcional; exclusão de conta remove o histórico de maneira integral.
- Conteúdo de exercícios não depende da conectividade; relatório semanal lê registros pessoais e PDF depende de ação explícita do trabalhador.
- A arquitetura de persistência é **comportamental**, não uma escolha de biblioteca: a tecnologia local será definida na implementação.
- Antes do Firebase, obter a deliberação registrada na #1 e alinhar o tratamento da #13. Validar com testes offline, reinício do aplicativo, reenvio idempotente e bloqueio de acesso a outro `uid`.

**Decisão proposta por:** Yago Santana (`@yagostn`). **Aprovação do grupo:** pendente, a registrar na issue #1.
