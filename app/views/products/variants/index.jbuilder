json.meta do
  json.total @total
end

json.data @variants do |variant|
  json.extract! variant, :id, :product_id, :price, :properties
end