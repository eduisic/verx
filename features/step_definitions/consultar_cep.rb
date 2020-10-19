Dado('que informe o cep {string}') do |cep|
    @cep = cep
end
  
Quando('efetuar a requisição') do
    @url = HTTParty.get("https://viacep.com.br/ws/#{@cep}/json/")
    @result = @url
end
  
Entao('devo visualizar o código do IBGE referente ao endereço') do
    @endereco = @result.parsed_response
    log(@endereco['ibge'])
end
  
Então('devo visualizar que o cep é inexistente') do
    @erro = @result.body
    expect(@erro['true']).eql? "true"
end
  
Então('exibirá a {int}') do |response_code|
    log(response_code)
    expect(@url.code).to eq(response_code)
end
  