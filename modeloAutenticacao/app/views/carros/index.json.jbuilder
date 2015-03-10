json.array!(@carros) do |carro|
  json.extract! carro, :id, :nome, :marca, :ano
  json.url carro_url(carro, format: :json)
end
