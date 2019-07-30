
  Quando("realizar uma requisição para buscar um CEP válido") do
    $response = HTTParty.get('https://viacep.com.br/ws/05544150/json/')
  end
  
  
  Então("a API deve retornar os dados do CEP respondendo com o código {int}") do |int|
    puts  "Response code: #{$response.code}"
    expect($response.code).to eq(200)
    puts  "IBGE:       #{$response['ibge']}"

  end
    

  Quando("realizar uma requisição para buscar um CEP Inválido") do
    $response = HTTParty.get('https://viacep.com.br/ws/05544560/json/')
  end
  
 
  Então("a API deve retornar os dados de endereço como inválido") do
    expect($response.code).to eq(200)
    puts  "Status code:#{$response.code}"
    
  
  end

  