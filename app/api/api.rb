class API < Grape::API
  prefix 'api'
  format :json

  mount RampitaAPI
end
