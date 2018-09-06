# Aula Extra - Respondendo às Dúvidas

- Contrato de Boletim (Márcio H.)
    - Objetivo: Salvar hash string de um arquivo
    - Dicas:
        - Utilizar `mapping` para associar um endereço a uma `struct` Boletim
        - Utilizar `enum` e `modifiers` para gerenciar permissões de quem poderá executar determinadas funções
        - Para verificar se o documento é válido, gerar o hash na aplicação e consultar o hash salvo no blockchain
    - Benchmark: [OriginalMy.com](https://originalmy.com)

- Contrato AccountTransaction - GoBlockchain (Márcio H.)
    - Fazer a gestão de transações que instrutores e colaboradores vão solicitar para realizar iniciativas pela GoBlockchain

- Modelo Econômico de Token Mintable (Pedro M.)
    - Pareamento da taxa de câmbio através de um contrato
    - Benchmark: [Bancor Network](https://about.bancor.network/)
    - Moedas inflacionárias, deflacionárias e 1:1

- Projeto Final (Pedro M.)
    - Aplicar o conhecimento adquirido ao longo do curso
    - Não precisa ser nada muito complexo, basta compilar e resolver um problema definido

- Redes Privadas com Ethereum (Pedro M.)
    - Na opinião do instrutor, aplicações privadas com Blockchain não fazem muito sentido
    - Poderiam ser resolvidas com modelos tradicionais de arquiteturas e aplicações centralizadas com banco de dados SQL e NoSQL, por exemplo
    - Pode ser útil para testar contratos
    - Solução para não precisar rodar um nó em um servidor: [Infura](https://infura.io/)
    - Hyperledger, blockchain privado para o desenvolvimento de aplicações em blockchain similar ao Ethereum
    - R3 Corda, blockchain privado voltado para aplicações financeiras e bancos

- Saldo associado a uma confirmação (Jaison C.)
    - Você pode chamar por `web3.eth.getBalance(address, [blockNumber], [callback])`, passando o endereço da conta e número do bloco como parâmetro
    - Referência da Javascript API do web3: [Get Balance](https://github.com/ethereum/wiki/wiki/JavaScript-API#web3ethgetbalance)

- Função para calcular automaticamente o gas price (Jaison C.)
    - Usando o [web3](https://github.com/ethereum/wiki/wiki/JavaScript-API), depois que você instancia o contrato, você pode chamar por `contract.myMethod.estimateGas()` ou `web3.eth.estimateGas(callObject, [callback])`
    - Para saber a média do `gas price` dos últimos blocos, chamar por `web3.eth.gasPrice` para obter informação similar à dada pelo ETH Gas Station
    - Referência da Javascript API do web3:
        - [Estimate Gas](https://github.com/ethereum/wiki/wiki/JavaScript-API#web3ethestimategas)
        - [Gas Price](https://github.com/ethereum/wiki/wiki/JavaScript-API#web3ethgasprice)

- É possível transferir saldo de várias carteiras para uma em uma única transação? (Jaison C.)
    - Não, no Ethereum só são permitidas transações com 1 input + 1 output, diferente do Bitcoin que permite múltiplos inputs e outputs.
    - Terá quer ser enviada uma transação de cada carteira por vez.
    - **Carteiras Multi-Assinatura (Multi-Sig Wallets)** NÂO resolverão nesse caso, elas servem somente para "aprovar" o envio de uma transação de determinada carteira, sendo assinadas por diferentes contas, utilizando contratos de Wallets MultiSig.
    - [Mist MultiSignature Wallet](https://medium.com/@cryptogrinders/mist-multisignature-wallet-7677d480bcb6)
    - [ethereum/meteor-dapp-wallet](https://github.com/ethereum/meteor-dapp-wallet/blob/master/Wallet.sol)
    - [ConsenSys/MultiSigWallet](https://github.com/ConsenSys/MultiSigWallet)

- IDE para Solidity
    - [Remix - Solidity IDE](https://remix.ethereum.org/)
    - [Visual Studio Code](https://code.visualstudio.com/)
        - [Solidity VS Extension](https://marketplace.visualstudio.com/items?itemName=JuanBlanco.solidity)

- Evitar utilizar `now` e `block.timestamp` para criar números "randômicos" nos contratos, pois pode gerar uma brecha de segurança que pode ser explorada pelos mineradores. Utilizar somente para salvar a informação de data.
