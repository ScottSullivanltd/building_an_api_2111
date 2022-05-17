class StoreSerializer
  include JSONAPI::Serializer
  attributes :name, :num_books

  has_many :books

  # attribute :num_books do |object|
  #   object.books.count
  # end

  attribute :active do
    true
  end
end
