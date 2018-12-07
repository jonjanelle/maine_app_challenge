json.extract! resource, :id, :name, :description, :view_count, :type, :url, :created_at, :updated_at
json.url resource_url(resource, format: :json)
