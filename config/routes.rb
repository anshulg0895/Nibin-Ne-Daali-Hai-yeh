Rails.application.routes.draw do
  root 'welcome#login'
  post 'students/new'
  resources :students
  resources :course
  resources :welcome
  post  'course/index'
  post 'course/show'
  get 'welcome/login'
  post 'welcome/check_login'

end
