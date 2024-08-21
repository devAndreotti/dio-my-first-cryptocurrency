quero que torne a visibilidade do readme melhor, mudando contorno de palavras e etc, sem exagero e faça somente isso NAO MUDE O NOME DE NADA:

<!-- Projeto Finalizado -->
# Desafio DIO: Minha Primeira Criptomoeda

<div align="center">
  <img src="Thumb.png" alt="Ganache Wallpaper"/>
</div>

## Objetivo do Projeto

Este projeto implementa um token ERC-20 chamado **Dio Token**. O objetivo é fornecer uma implementação básica de um token ERC-20 utilizando Solidity. O projeto inclui a criação, transferência e gerenciamento de tokens.

## Funcionalidades

- **Transferência de Tokens**: Permite a transferência de tokens entre endereços usando a função `transfer`.
- **Aprovação e Transferência de Tokens**: Permite que um endereço aprove outro para gastar uma quantidade específica de tokens e transferir esses tokens usando a função `transferFrom`.
- **Consulta de Saldo e Permissão**: Consulta o saldo de tokens de um endereço usando a função `balanceOf` e o quanto um endereço pode gastar em nome de outro usando a função `allowance`.

## Tecnologias Empregadas

- **Solidity**: Linguagem de programação para contratos inteligentes na Ethereum.
- **Ganache**: Ferramenta para criar uma blockchain local para testar contratos inteligentes.
- **MetaMask**: Carteira de criptomoedas que permite interagir com a rede Ethereum e seus contratos.
- **Remix IDE**: Ambiente integrado para criar, testar e implantar contratos inteligentes na Ethereum.
- **Truffle**: Framework para contratos inteligentes, facilitando a escrita, teste e implantação de contratos Ethereum.

## Interface IERC20

A interface `IERC20` define as funções e eventos obrigatórios para um token ERC-20, incluindo:

- `totalSupply()`: Retorna o total de tokens emitidos.
- `balanceOf(address account)`: Retorna o saldo de tokens de um endereço.
- `allowance(address owner, address spender)`: Retorna a quantidade de tokens que um spender pode gastar em nome do owner.
- `transfer(address recipient, uint256 amount)`: Transfere tokens para outro endereço.
- `approve(address spender, uint256 amount)`: Aprova um spender a gastar uma quantidade específica de tokens.
- `transferFrom(address sender, address recipient, uint256 amount)`: Transfere tokens de um endereço para outro usando permissão prévia.

## Contrato DioToken

O contrato implementa a interface `IERC20` e inclui:

- **Nome do Token**: `Dio Token`
- **Símbolo do Token**: `DIO`
- **Casas Decimais**: `18`

## Guia de Implementação

1. **Configuração do Ambiente**
   - **Ganache**: Use o Ganache para criar uma rede local Ethereum para testes.
   - **MetaMask**: Configure a MetaMask para se conectar à rede local criada pelo Ganache.
   - **Remix IDE**: Acesse [Remix Ethereum IDE](https://remix.ethereum.org) para compilar e implantar o contrato.
   - **Truffle**: Instale o Truffle com `npm install -g truffle`. Crie um novo projeto com `truffle init`.

2. **Implementação do Contrato**
      - Inicie o Remix IDE e insira o código do contrato `DioToken` no editor principal.
      - Execute a compilação do contrato diretamente no Remix. Certifique-se de que não haja erros, e o contrato esteja pronto para ser implantado.
      - **Preparação do Ambiente:** Abra o Ganache para criar uma blockchain local e garantir a conexão com o Truffle.
      - **Compilação com Truffle:** No terminal, utilize `truffle compile` para compilar o contrato. Certifique-se de que o processo seja concluído sem falhas.
      - **Configuração do Truffle:** No arquivo `truffle-config.js`, ajuste as configurações para conectar-se à rede local fornecida pelo Ganache.
      - **Migração e Implantação:** Execute `truffle migrate` no terminal para realizar a migração e implantação do contrato na sua rede local.

3. **Interação com o Contrato**
   - Use a interface do Remix ou o Truffle Console (`truffle console`) para interagir com o contrato e realizar transações de teste.
   - Verifique o saldo, aprove e transfira tokens entre endereços.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou fazer um fork do repositório e enviar pull requests.

1. Faça um fork do projeto.
2. Crie uma nova branch para sua feature `git checkout -b feature/nome-feature`.
3. Commit suas mudanças `git commit -m 'Adiciona nova feature'`.
4. Envie para a branch `git push origin feature/nome-feature`.
5. Abra um Pull Request.

## Nota

Este projeto é uma atividade da **DIO** e demonstra a implementação básica de um token ERC-20. Sinta-se livre para explorar e adaptar.
