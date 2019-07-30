Dado("o endereço da api para buscar os dados de um endereço") do
    
  end
  
  Quando("realizar uma requisição para buscar um endereço") do
    $response = HTTParty.get('https://viacep.com.br/ws/05544150/json/')
  end
  
  Então("a API deve retornar os dados do endereço respondendo o código {int}") do |int|
    puts  "Response code: #{$response.code}"
    expect($response.code).to eq(200)
    puts "Response body: #{$response.body}"
    puts  "IBGE:       #{$response['ibge']}"
    
  end

  Dado("o endereço da api para buscar os dados de um endereço invalido") do
   
  end
  
  Quando("realizar uma requisição para buscar um endereço invalido") do
    $response = HTTParty.get('https://viacep.com.br/ws/05544560/json/')
  end
  
  Então("a API deve retornar os dados com erro o código {int}") do |int|
    expect($response.code).to eq(200)
    puts  "Status code:#{$response.code}"
  
  end

  