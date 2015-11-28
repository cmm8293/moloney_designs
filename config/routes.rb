Rails.application.routes.draw do
  

  root                   'static_pages#home'
  get   'founder'   =>   'static_pages#founder'
  get   'about'     =>   'static_pages#about'
  get   'contact'   =>   'static_pages#contact'
  get   'locations' =>   'static_pages#locations'
  get   'display'   =>   'products#display'
  get   'gallery'   =>   'gallery#image_display'
  
end
