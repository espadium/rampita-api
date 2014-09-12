class API < Grape::API
  prefix 'api'
  format :json

  mount Rampita
end
