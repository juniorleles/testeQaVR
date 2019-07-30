#language: pt
@buscarCep
Funcionalidade: Consultar os dados de um endereço a partir de um CEP

Cenário: Buscar um endereço a partir de um CEP válido
    Quando realizar uma requisição para buscar um CEP válido
    Então a API deve retornar os dados do CEP respondendo com o código 200

Cenário: Buscar um endereço a partir de um CEP Inválido
    Quando realizar uma requisição para buscar um CEP Inválido 
    Então a API deve retornar os dados de endereço como inválido
