// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Interface padrão ERC-20 que define as funções obrigatórias para qualquer token ERC-20
interface IERC20 {

    // Função para obter o total de tokens emitidos
    function totalSupply() external view returns(uint256);

    // Função para obter o saldo de tokens de uma determinada conta
    function balanceOf(address account) external view returns (uint256);

    // Função para verificar a quantidade de tokens que um determinado spender (gastador) pode gastar em nome do owner (dono)
    function allowance(address owner, address spender) external view returns (uint256);



    // Função para transferir tokens de uma conta para outra
    function transfer(address recipient, uint256 amount) external returns (bool);

    // Função para aprovar um gasto de tokens por outra conta
    function approve(address spender, uint256 amount) external returns (bool);

    // Função para transferir tokens de uma conta para outra, utilizando a permissão previamente concedida
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);



    // Evento emitido quando ocorre uma transferência de tokens
    event Transfer(address indexed from, address indexed to, uint256 value);

    // Evento emitido quando uma conta aprova outra para gastar seus tokens
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

// Implementação do Dio Token baseado no padrão ERC-20
contract DioToken is IERC20 {

    // Nome do token
    string public constant name = "Dio Token";

    // Símbolo do token
    string public constant symbol = "DIO";

    // Quantidade de casas decimais usadas pelo token (18 é o padrão para tokens ERC-20)
    uint8 public constant decimals = 18;



    // Mapeamento que armazena o saldo de cada endereço
    mapping (address => uint256) balances;

    // Mapeamento que armazena as permissões de gasto entre contas
    mapping(address => mapping(address => uint256)) allowed;

    // Total de tokens emitidos
    uint256 totalSupply_ = 10 ether;

    // Construtor que define o saldo inicial do criador do contrato como o total de tokens emitidos
    constructor() {
        balances[msg.sender] = totalSupply_;
    }

    // Função que retorna o total de tokens emitidos
    function totalSupply() public override view returns (uint256) {
        return totalSupply_;
    }

    // Função que retorna o saldo de tokens de uma determinada conta
    function balanceOf(address tokenOwner) public override view returns (uint256) {
        return balances[tokenOwner];
    }

    // Função para transferir tokens do remetente para outro endereço
    function transfer(address receiver, uint256 numTokens) public override returns (bool) {
        require(numTokens <= balances[msg.sender]);
        balances[msg.sender] = balances[msg.sender]-numTokens;
        balances[receiver] = balances[receiver]+numTokens;
        emit Transfer(msg.sender, receiver, numTokens);
        return true;
    }

    // Função para aprovar outro endereço a gastar uma quantidade específica de tokens em nome do remetente
    function approve(address delegate, uint256 numTokens) public override returns (bool) {
        allowed[msg.sender][delegate] = numTokens;
        emit Approval(msg.sender, delegate, numTokens);
        return true;
    }

    // Função para verificar quanto uma conta pode gastar em nome de outra
    function allowance(address owner, address delegate) public override view returns (uint) {
        return allowed[owner][delegate];
    }

    // Função para transferir tokens de uma conta para outra usando a permissão concedida com approve()
    function transferFrom(address owner, address buyer, uint256 numTokens) public override returns (bool) {
        require(numTokens <= balances[owner]);
        require(numTokens <= allowed[owner][msg.sender]);

        balances[owner] = balances[owner]-numTokens;
        allowed[owner][msg.sender] = allowed[owner][msg.sender]-numTokens;
        balances[buyer] = balances[buyer]+numTokens;
        emit Transfer(owner, buyer, numTokens);
        return true;
    }

}
