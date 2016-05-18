Rails.application.routes.draw do

  namespace :api, {format: 'json'} do
    namespace :v1 do
      get 'swap_points' => 'swap_points#index'
    end
  end

end
