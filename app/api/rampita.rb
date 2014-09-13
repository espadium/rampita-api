class Rampita < Grape::API
  format :json
  version 'v1', using: :path

  resource :places do
    desc 'Returns a list of places'
    get do
      AccesibleUyApiGem.client.all_places
    end

    desc "Return a place."
    params do
      requires :id, type: Integer, desc: "Place id."
    end
    route_param :id do
      get do
        AccesibleUyApiGem.client.find_place(params[:id])
      end
    end
  end
end
