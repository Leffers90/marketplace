require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "posts a comment to a listing page" do
    listing = Listing.new
    comment = listing.comments.new(body: "Hello")
    expect(comment.body).to eq 'Hello'
  end
end
