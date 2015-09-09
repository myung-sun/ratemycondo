Table of Contents
1. Features implemented (What’s working?)
2. Rest API
3. gems used
4. Future implementation

**** User IDs to explore the system :
  Role   |    User ID    | Password
-------- | ------------- | ----------
  Admin  | admin@rmc.com | asdfqwer
 Regular | test1@rmc.com | 12341234
 Regular | test2@rmc.com | 12341234


1. Features implemented (What’s working?)

• User Authentication:
- (Super) Admin has super powers. They can perform anything
- Regular users can rate/comment and vote. They can manipulate only what they create.
- Guests can only view

•Google Authentication: Users can sign up using their Google accounts

•Search:
- Simple Search allows users to search by Apt name and address
- Advanced Search allows users to refine their preferences for recommendations

•Auto-complete: Don’t remember the full name of the Apt? Don’t worry. Two letters will suffice

•Contact Us: Have a question? Just fill out a form and we will get back to you ASAP. We will send you
a confirmation email regarding your questions

•Map: Don’t know where the Apt is? Let us show you where the Apt is located on a Map




2. gems used & app specification
- Gem: Devise, OmniAuth, Ransack, Railsautocomplete,
Ratyrate, Geocoder, (simpleform)

- Spec: Ruby on Rails, HTML/CSS, JavaScript,
Apache, Passenger, Postgresql, Bootstrap, Git

3. Future implementation (What’s not working?)
Display other recommended apartment to the users: apartments that others also viewed

4. Rest API: Our web application, "Rate My Apartments" support full rest API. And below are the list.

                      Prefix Verb     URI Pattern                                 Controller#Action
                        rate POST     /rate(.:format)                             rater#create
                    contacts GET      /contacts(.:format)                         contacts#index
                             POST     /contacts(.:format)                         contacts#create
                 new_contact GET      /contacts/new(.:format)                     contacts#new
                edit_contact GET      /contacts/:id/edit(.:format)                contacts#edit
                     contact GET      /contacts/:id(.:format)                     contacts#show
                             PATCH    /contacts/:id(.:format)                     contacts#update
                             PUT      /contacts/:id(.:format)                     contacts#update
                             DELETE   /contacts/:id(.:format)                     contacts#destroy
            new_user_session GET      /users/sign_in(.:format)                    devise/sessions#new
                user_session POST     /users/sign_in(.:format)                    devise/sessions#create
        destroy_user_session DELETE   /users/sign_out(.:format)                   devise/sessions#destroy
     user_omniauth_authorize GET|POST /users/auth/:provider(.:format)             users/omniauth_callbacks#passthru {:provider=>/google_oauth2/}
      user_omniauth_callback GET|POST /users/auth/:action/callback(.:format)      users/omniauth_callbacks#(?-mix:google_oauth2)
               user_password POST     /users/password(.:format)                   devise/passwords#create
           new_user_password GET      /users/password/new(.:format)               devise/passwords#new
          edit_user_password GET      /users/password/edit(.:format)              devise/passwords#edit
                             PATCH    /users/password(.:format)                   devise/passwords#update
                             PUT      /users/password(.:format)                   devise/passwords#update
    cancel_user_registration GET      /users/cancel(.:format)                     devise/registrations#cancel
           user_registration POST     /users(.:format)                            devise/registrations#create
       new_user_registration GET      /users/sign_up(.:format)                    devise/registrations#new
      edit_user_registration GET      /users/edit(.:format)                       devise/registrations#edit
                             PATCH    /users(.:format)                            devise/registrations#update
                             PUT      /users(.:format)                            devise/registrations#update
                             DELETE   /users(.:format)                            devise/registrations#destroy
autocomplete_link_name_links GET      /links/autocomplete_link_name(.:format)     links#autocomplete_link_name
       advanced_search_links GET|POST /links/advanced_search(.:format)            links#advanced_search
           result_page_links GET|POST /links/result_page(.:format)                links#result_page
                   like_link PUT      /links/:id/like(.:format)                   links#upvote
                dislike_link PUT      /links/:id/dislike(.:format)                links#downvote
               link_comments GET      /links/:link_id/comments(.:format)          comments#index
                             POST     /links/:link_id/comments(.:format)          comments#create
            new_link_comment GET      /links/:link_id/comments/new(.:format)      comments#new
           edit_link_comment GET      /links/:link_id/comments/:id/edit(.:format) comments#edit
                link_comment GET      /links/:link_id/comments/:id(.:format)      comments#show
                             PATCH    /links/:link_id/comments/:id(.:format)      comments#update
                             PUT      /links/:link_id/comments/:id(.:format)      comments#update
                             DELETE   /links/:link_id/comments/:id(.:format)      comments#destroy
                       links GET      /links(.:format)                            links#index
                             POST     /links(.:format)                            links#create
                    new_link GET      /links/new(.:format)                        links#new
                   edit_link GET      /links/:id/edit(.:format)                   links#edit
                        link GET      /links/:id(.:format)                        links#show
                             PATCH    /links/:id(.:format)                        links#update
                             PUT      /links/:id(.:format)                        links#update
                             DELETE   /links/:id(.:format)                        links#destroy
                        root GET      /                                           links#index

