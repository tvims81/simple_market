json.meta do

end

json.data do
  json.extract! @variant, :id, :product_id, :price, :properties
end