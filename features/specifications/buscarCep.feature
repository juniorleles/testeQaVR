#language: pt
@buscarCep
Funcionalidade: Consultar os dados de um endereço a partir de um CEP

Cenário: Buscar um endereço a partir de um CEP
    Dado o endereço da api para buscar os dados de um endereço
    Quando realizar uma requisição para buscar um endereço 
    Então a API deve retornar os dados do endereço respondendo o código 200

Cenário: Buscar um endereço a partir de um CEP Invalido
    Dado o endereço da api para buscar os dados de um endereço
    Quando realizar uma requisição para buscar um endereço 
    Então a API deve retornar os dados com erro o código 200
