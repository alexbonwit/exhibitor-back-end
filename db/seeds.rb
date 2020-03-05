Artist.destroy_all
Museum.destroy_all
Exhibit.destroy_all
ExhibitArtist.destroy_all


10.times{Artist.create(name: Faker::Artist.name, bio: Faker::Lorem.sentence)}

10.times{Museum.create(name: Faker::Name.name, address: Faker::Address.street_address)
    10.times{
    Exhibit.create(name: Faker::Lorem.word, description: Faker::Lorem.sentence, start_date: Faker::Date.in_date_period, end_date: Faker::Date.in_date_period, cost: Faker::Number.within(range: 1..50), interest_count: 0, museum_id: Museum.all.sample.id )
        1.times {
            ExhibitArtist.create(exhibit_id: Exhibit.all.sample.id, artist_id: Artist.all.sample.id)
        }
    }
}