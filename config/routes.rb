Rails.application.routes.draw do
  get 'contacts/list'
  get 'contacts/:id' => 'contacts#view', :as => :contacts_view
  post 'contacts/:id' => 'contacts#send_sms'
  root 'contacts#list'
end
