CampfireNotices::Application.routes.draw do
  root 'messages#index'

  post '/messages' => 'messages#post_message', as: 'post_message'
end
