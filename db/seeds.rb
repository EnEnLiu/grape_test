15.times do
  Book.create(isbn: Faker::Number.number(digits: 4),
              titile: Faker::Superhero.power,
              stock: Faker::Number.within(range: 2..19))
end

book_ids = Book.ids

95.times do
  Flow.create(book_id: book_ids.sample,
              newStock: Faker::Number.within(range: 2..15),
              previousStock: Faker::Number.within(range: 2..15))
end
