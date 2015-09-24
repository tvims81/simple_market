json.meta do

end

json.data do
  json.extract! @product, :id, :name, :category_name, :description
end