# Regras para quem contribui no PausaAtiva

Vale para os integrantes do grupo e para qualquer assistente de código ou agente usado por eles.

## Commits e PRs sem atribuição a ferramentas

O commit e o PR saem em nome de quem fez o trabalho. Nenhum commit, título de PR ou descrição de PR pode citar a ferramenta de IA ou o agente usado. Isso inclui:

- linhas `Co-Authored-By` de ferramenta ou bot;
- rodapés como "Generated with..." ou "Gerado por...";
- nomes de ferramentas como Claude, Copilot, ChatGPT, Codex, Gemini e Cursor, ou de empresas como Anthropic e OpenAI.

O uso de IA é registrado num lugar só: [`docs/uso-de-ia.md`](docs/uso-de-ia.md), com os prompts, os erros e as correções.

### Como a regra é conferida

- **Na sua máquina:** o hook `.githooks/commit-msg` barra o commit antes de ele existir. Ative uma vez por clone:

  ```sh
  git config core.hooksPath .githooks
  ```

A lista de padrões fica em `.githooks/padrao-atribuicao.txt`. O título e a descrição do PR são conferidos por quem revisa.

## Documentação no mesmo commit

Quem implementa atualiza o `README.md` e o `CHANGELOG.md` no mesmo commit, com o próprio nome na linha do CHANGELOG.
