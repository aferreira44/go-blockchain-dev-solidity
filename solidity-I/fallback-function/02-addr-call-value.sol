pragma solidity ^0.4.24;

contract Test {
    event ReceivedEther(address sender, uint value);

    function () public payable {
        emit ReceivedEther(msg.sender, msg.value);

        /* 
        Agora posso executar mais funções
        pois estou recebendo mais gas que os 2300 gas
        que a fallback function usa por padrão

        NÃO UTILIZAR POR GERAR UM BUG DE SEGURANÇA
        */
    }
}

contract Caller {
    Test test = Test(0x000);

    function sendEther() public payable {
        address(test).call.value(msg.value)();
    }
}