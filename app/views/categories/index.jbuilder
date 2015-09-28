json.meta do
  json.total @total
end

json.data @categories do |category|
  json.extract! category, :id, :name
end