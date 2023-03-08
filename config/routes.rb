Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # create a blog
  post "/blogs", to: "blogs#create"
  # get all blogs
  get "/blogs", to: "blogs#index"
  # get a specific blog
  get "/blogs/:id", to: "blogs#show"
  # update a blog
  put "/blogs/:id", to: "blogs#update"
  # delete a blog
  delete "/blogs/:id", to: "blogs#destroy"
end
