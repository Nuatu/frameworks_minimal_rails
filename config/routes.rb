Frameworks::Application.routes.draw do
  match('/', {via: :get, to: 'homepages#index'})

  match('frameworks', {:via => :get, :to => 'frameworks#index'})
  match('frameworks/new', {:via => :get, :to => 'frameworks#new'})
  match('frameworks', {:via => :post, :to => 'frameworks#create'})
  match('frameworks/:id', {:via => :get, :to => 'frameworks#show'})
  match('frameworks/:id/edit', {:via => :get, :to => 'frameworks#edit'})
  match('frameworks/:id', {:via => [:patch, :put], :to => 'frameworks#update'})
  match('frameworks/:id', {:via => :delete, :to => 'frameworks#destroy'})

  match('languages', {:via => :get, :to => 'languages#index'})
  match('languages/new', {:via => :get, :to => 'languages#new'})
  match('languages', {:via => :post, :to => 'languages#create'})
  match('languages/:id', {:via => :get, :to => 'languages#show'})
  match('languages/:id/edit', {:via => :get, :to => 'languages#edit'})
  match('languages/:id', {:via => [:patch, :put], :to => 'languages#update'})
  match('languages/:id', {:via => :delete, :to => 'languages#destroy'})

  match('tags', {:via => :get, :to => 'tags#index'})
  match('tags/new', {:via => :get, :to => 'tags#new'})
  match('tags', {:via => :post, :to => 'tags#create'})
  match('tags/:id', {:via => :get, :to => 'tags#show'})
  match('tags/:id/edit', {:via => :get, :to => 'tags#edit'})
  match('tags/:id', {:via => [:patch, :put], :to => 'tags#update'})
  match('tags/:id', {:via => :delete, :to => 'tags#destroy'})
end
