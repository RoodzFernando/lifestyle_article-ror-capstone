
User.create!(name: "default user")
15.times do |n|
    User.all.create!(name: Faker::Name.unique.name)
end

category_list = %w[American Caribbean Chinese French Italian Mexican]

priop = (1..6).to_a.shuffle
category_list.each do |n|
    Category.create!(name: n, priority: priop[category_list.index(n)])
end
users = User.all
img = (1..18).to_a.shuffle
users.each do |user|
    Article.create(author_id: user.id, title: Faker::Lorem.sentence(word_count: 8), text: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true), image: File.new("#{Rails.root}/app/assets/images/seed#{img[users.index(user)]}.jpg") ,category_id: rand(1..6))
end

users.each do |user|
    Article.all.each do |article|
        Vote.create!(user_id: user.id, article_id: article.id)
    end
end

