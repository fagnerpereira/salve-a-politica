json.extract! proposal, :id, :name, :age, :state, :city, :part, :created_at, :updated_at
json.url proposal_url(proposal, format: :json)
