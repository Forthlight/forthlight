Forthlight::Application.routes.draw do

  # Root url of the application
  root 'launcher#index'

  #Engines
  mount Member::Engine, at: "/member"
  mount Administration::Engine, at: "/administration"
  mount Article::Engine, at: "/article"
  mount CommonDomain::Engine, at: "/common_domain"
end
