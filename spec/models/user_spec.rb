require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensures name presence' do
      user = User.new(avatar: 'image', email: 'testing@gmail.com').save
      expect(user).to eq(false)
    end

    it 'ensures email presence' do
      user = User.new(avatar: 'image', name: 'name').save
      expect(user).to eq(false)
    end

    it 'ensures avatar presence' do
      user = User.new(name: 'name', email: 'testing@gmail.com').save
      expect(user).to eq(false)
    end

    it 'should save successfully' do
      user = User.new(avatar: 'image', name: 'name', email: 'testing@gmail.com').save
      expect(user).to eq(true)
    end
  end 
  context 'scope tests' do
  end
end
