RampitaAPI::Application.routes.draw do
  mount API => '/'

  root to: 'places#map'
end
