class Rampita < Grape::API
  format :json
  version 'v1', using: :path

  resource :places do
    desc 'Returns a list of places'
    get do
      AccesibleUyApiGem.client.all_places
    end
  end
end
