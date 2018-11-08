require 'rails_helper'

RSpec.describe Favorite, type: :model do
  it "add listing to user favorites" do
    listing = Listing.create
    user = User.create(name: "Tom")
    user.favorite_listings << listing

    expect(user.favorite_listings).to include(listing)
  end
end
