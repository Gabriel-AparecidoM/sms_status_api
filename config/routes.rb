Rails.application.routes.draw do
  post "/messages", to: "messages#create"
  patch "/messages/:serial_id", to: "messages#update"
  get "/reports/messages", to: "reports#messages"
end
