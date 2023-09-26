Rails.application.routes.draw do
  get 'first_entry_times/index'
  get 'slot_allocation_history/show'
  get 'used_slots/index'
  get 'slot_bookings/new'
  get 'slot_bookings/create'
  resources :slot_bookings
  root to: "slot_bookings#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
