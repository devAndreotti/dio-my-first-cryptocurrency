# Desafio DIO - Contrato ERC-20

<div align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/e/e0/Ethereum_logo_2014.svg" alt="Ethereum Logo" width="250" />
</div>

## Objetivo do Projeto

Este projeto implementa um token ERC-20 chamado **DIO Token**. O objetivo é fornecer uma implementação básica de um token ERC-20 utilizando Solidity. O projeto inclui a criação, transferência e gerenciamento de tokens.

## Tecnologias Empregadas

- **Solidity**: Linguagem de programação para contratos inteligentes na Ethereum.
- **Ganache**: Ferramenta para criar uma blockchain local para testar contratos inteligentes.
- **MetaMask**: Carteira de criptomoedas que permite interagir com a rede Ethereum e seus contratos.
- **Remix IDE**: Ambiente de desenvolvimento integrado para criar, testar e implantar contratos inteligentes na Ethereum.

## Funcionalidades

- **Transferência de Tokens**: Permite a transferência de tokens entre endereços.
- **Aprovação e Transferência de Tokens**: Permite que um endereço aprove outro para gastar uma quantidade específica de tokens e transferir esses tokens.
- **Consulta de Saldo e Permissão**: Consulta o saldo de tokens de um endereço e o quanto um endereço pode gastar em nome de outro.

## Guia de Implementação

1. **Configuração do Ambiente**
   - **Ganache**: Use o Ganache para criar uma rede local Ethereum para testes.
   - **MetaMask**: Configure a MetaMask para se conectar à rede local criada pelo Ganache.
   - **Remix IDE**: Acesse [Remix Ethereum IDE](https://remix.ethereum.org) para compilar e implantar o contrato.

2. **Implementação do Contrato**
   - Abra o Remix IDE e cole o código do contrato `DIOToken` no editor.
   - Compile o contrato e verifique se não há erros.
   - Implante o contrato na rede local usando Ganache.

3. **Interação com o Contrato**
   - Use a interface do Remix para interagir com o contrato e realizar transações de teste.
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
