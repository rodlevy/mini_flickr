10.times do
  User.create(:first_name => Faker::Name.first_name,
              :last_name => Faker::Name.last_name,
              :email =>   Faker::Internet.email,
              :password_hash  => Faker::Lorem.characters(10))
end


Album.create(:name => 'Hot')
Album.create(:name => 'Cold')
Album.create(:name => 'Awesome')
Album.create(:name => 'Rad')
Album.create(:name => 'Bitchin')


