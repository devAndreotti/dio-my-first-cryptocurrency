# Desafio DIO - Criando Minha Primeira Criptomoeda

<div align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/e/e0/Ethereum_logo_2014.svg" alt="Ethereum Logo" width="250" />
</div>

## Objetivo do Projeto

Este projeto implementa um token ERC-20 chamado **DIO Token**. O objetivo é fornecer uma implementação básica de um token ERC-20 utilizando Solidity. O projeto inclui a criação, transferência e gerenciamento de tokens, seguindo a especificação padrão ERC-20.

## Tecnologias Empregadas

- **Solidity**: Linguagem de programação para contratos inteligentes na Ethereum.
- **Ganache**: Ferramenta para criar uma blockchain local para testar contratos inteligentes.
- **MetaMask**: Carteira de criptomoedas que permite interagir com a rede Ethereum e seus contratos.
- **Remix IDE**: Ambiente de desenvolvimento integrado para criar, testar e implantar contratos inteligentes na Ethereum.
- **Truffle**: Framework de desenvolvimento para contratos inteligentes, facilitando a escrita, teste e implantação de contratos Ethereum.

## Funcionalidades

- **Transferência de Tokens**: Permite a transferência de tokens entre endereços usando a função `transfer`.
- **Aprovação e Transferência de Tokens**: Permite que um endereço aprove outro para gastar uma quantidade específica de tokens e transferir esses tokens usando a função `transferFrom`.
- **Consulta de Saldo e Permissão**: Consulta o saldo de tokens de um endereço usando a função `balanceOf` e o quanto um endereço pode gastar em nome de outro usando a função `allowance`.

### Eventos

- **Transfer**: Emitido quando ocorre uma transferência de tokens.
- **Approval**: Emitido quando uma conta aprova outra para gastar seus tokens.

## Estrutura do Contrato

### Interface IERC20

A interface `IERC20` define as funções e eventos obrigatórios para um token ERC-20, incluindo:

- `totalSupply()`: Retorna o total de tokens emitidos.
- `balanceOf(address account)`: Retorna o saldo de tokens de um endereço.
- `allowance(address owner, address spender)`: Retorna a quantidade de tokens que um spender pode gastar em nome do owner.
- `transfer(address recipient, uint256 amount)`: Transfere tokens para outro endereço.
- `approve(address spender, uint256 amount)`: Aprova um spender a gastar uma quantidade específica de tokens.
- `transferFrom(address sender, address recipient, uint256 amount)`: Transfere tokens de um endereço para outro usando uma permissão prévia.

### Contrato DIOToken

O contrato `DIOToken` implementa a interface `IERC20` e inclui:

- **Nome do Token**: `DIO Token`
- **Símbolo do Token**: `DIO`
- **Casas Decimais**: `18`

#### Funções Principais

- **totalSupply()**: Retorna o total de tokens emitidos, inicializado como 10 ether.
- **balanceOf(address tokenOwner)**: Retorna o saldo de tokens de um endereço.
- **transfer(address receiver, uint256 numTokens)**: Transfere tokens do remetente para outro endereço.
- **approve(address delegate, uint256 numTokens)**: Aprova um endereço a gastar uma quantidade específica de tokens.
- **allowance(address owner, address delegate)**: Verifica quanto um endereço pode gastar em nome de outro.
- **transferFrom(address owner, address buyer, uint256 numTokens)**: Transfere tokens de um endereço para outro usando a permissão concedida.

## Guia de Implementação

1. **Configuração do Ambiente**
   - **Ganache**: Use o Ganache para criar uma rede local Ethereum para testes.
   - **MetaMask**: Configure a MetaMask para se conectar à rede local criada pelo Ganache.
   - **Remix IDE**: Acesse [Remix Ethereum IDE](https://remix.ethereum.org) para compilar e implantar o contrato.
   - **Truffle**: Instale o Truffle com `npm install -g truffle`. Crie um novo projeto com `truffle init`.

2. **Implementação do Contrato**
   - Abra o Remix IDE e cole o código do contrato `DIOToken` no editor.
   - Compile o contrato e verifique se não há erros.
   - Implante o contrato na rede local usando Ganache e o Truffle.
     - No terminal, execute `truffle compile` para compilar os contratos.
     - Configure o `truffle-config.js` para conectar-se à sua rede local.
     - Execute `truffle migrate` para implantar o contrato.

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

Este projeto é uma atividade da DIO e demonstra a implementação básica de um token ERC-20. Sinta-se livre para explorar e adaptar conforme necessário.
