json.meta do

end

json.data do
  json.extract! @product, :id, :name, :description, :category_id
end