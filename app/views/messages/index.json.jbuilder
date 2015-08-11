json.array!(@messages) do |message|
  json.extract! message, :id, :name, :email, :company, :item, :phone, :category, :created_at, :updated_at, :preferredcontact, :companytype, :itemtype, :details
  json.url message_url(message, format: :json)
end
