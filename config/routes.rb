Rails.application.routes.draw do
    post 'testing', to: "api/apis#testing"
    post 'token', to: "api/tokens#generate_token"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
