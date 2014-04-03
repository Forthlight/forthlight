Forthlight::Application.routes.draw do

  # Root url of the application
  root 'launcher#index'

  #Engines
  mount Auth::Engine, at: "/auth"
  mount CommonDomain::Engine, at: "/common_domain"
  mount Article::Engine, at: "/article"
  mount Member::Engine, at: "/member"
  mount Administration::Engine, at: "/administration"
end
