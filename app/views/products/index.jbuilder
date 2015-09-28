json.meta do
  json.total @total
end

json.data @products do |product|
  json.extract! product, :id, :name, :description, :category_id
end