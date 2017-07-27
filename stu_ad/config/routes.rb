Rails.application.routes.draw do
  root 'welcome#index'
  post 'students/index'
  resources :students
  resources :course
  post  'course/new'
  get 'course/show'
  post 'course/show'
  post 'students/new'
end
