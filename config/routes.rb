Rails.application.routes.draw do
  get 'contacts/list'

  get 'contacts/view/:id' => 'contacts#view', :as => :contacts_view

  get 'contacts/send_sms'
  root 'contacts#list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
