

category_list = %w[American Caribbean Chinese French Italian Mexican]

prop = (1..6).to_a.shuffle
category_list.each do |n|
    Category.create!(name: n, priority: prop[category_list.index(n)])
end

