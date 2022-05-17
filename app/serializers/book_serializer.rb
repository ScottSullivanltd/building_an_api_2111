class BookSerializer
  include JSONAPI::Serializer
  attributes :title, :author, :genre, :summary, :number_sold

  has_many :stores

  attribute :num_stores do |object|
    object.stores.count
  end
end
