json.extract! tranxaction, :id, :name, :amount, :created_at, :updated_at
json.url tranxaction_url(tranxaction, format: :json)
