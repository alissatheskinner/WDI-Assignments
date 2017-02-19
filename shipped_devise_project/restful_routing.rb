                  Prefix Verb   URI Pattern                    Controller#Action
              home_index GET    /home/index(.:format)          home#index
               boat_jobs GET    /boat_jobs(.:format)           boat_jobs#index
                         POST   /boat_jobs(.:format)           boat_jobs#create
            new_boat_job GET    /boat_jobs/new(.:format)       boat_jobs#new
           edit_boat_job GET    /boat_jobs/:id/edit(.:format)  boat_jobs#edit
                boat_job GET    /boat_jobs/:id(.:format)       boat_jobs#show
                         PATCH  /boat_jobs/:id(.:format)       boat_jobs#update
                         PUT    /boat_jobs/:id(.:format)       boat_jobs#update
                         DELETE /boat_jobs/:id(.:format)       boat_jobs#destroy
                    jobs GET    /jobs(.:format)                jobs#index
                         POST   /jobs(.:format)                jobs#create
                 new_job GET    /jobs/new(.:format)            jobs#new
                edit_job GET    /jobs/:id/edit(.:format)       jobs#edit
                     job GET    /jobs/:id(.:format)            jobs#show
                         PATCH  /jobs/:id(.:format)            jobs#update
                         PUT    /jobs/:id(.:format)            jobs#update
                         DELETE /jobs/:id(.:format)            jobs#destroy
                   boats GET    /boats(.:format)               boats#index
                         POST   /boats(.:format)               boats#create
                new_boat GET    /boats/new(.:format)           boats#new
               edit_boat GET    /boats/:id/edit(.:format)      boats#edit
                    boat GET    /boats/:id(.:format)           boats#show
                         PATCH  /boats/:id(.:format)           boats#update
                         PUT    /boats/:id(.:format)           boats#update
                         DELETE /boats/:id(.:format)           boats#destroy
             users_index GET    /users/index(.:format)         users#index
                    user GET    /profile(.:format)             users#show
        new_user_session GET    /users/sign_in(.:format)       users/sessions#new
            user_session POST   /users/sign_in(.:format)       users/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)      users/sessions#destroy
       new_user_password GET    /users/password/new(.:format)  users/passwords#new
      edit_user_password GET    /users/password/edit(.:format) users/passwords#edit
           user_password PATCH  /users/password(.:format)      users/passwords#update
                         PUT    /users/password(.:format)      users/passwords#update
                         POST   /users/password(.:format)      users/passwords#create
cancel_user_registration GET    /users/cancel(.:format)        users/registrations#cancel
   new_user_registration GET    /users/sign_up(.:format)       users/registrations#new
  edit_user_registration GET    /users/edit(.:format)          users/registrations#edit
       user_registration PATCH  /users(.:format)               users/registrations#update
                         PUT    /users(.:format)               users/registrations#update
                         DELETE /users(.:format)               users/registrations#destroy
                         POST   /users(.:format)               users/registrations#create
                    root GET    /                              home#index