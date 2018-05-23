require 'user'

describe User do

  let(:id) { 1 }
  let(:name) {'Chloe'}
  let(:email) {'user@gmail.com'}
  let(:password) {'fish1234'}

  let(:test_user) { User.create(
    id: id,
    name: name,
    email: email,
    password: password
    )}

  before do
    test_user
  end

  context '#create' do
    it 'returns object with id attribute' do
      expect(test_user.id).to eq id
    end

    it 'returns object with name attribute' do
      expect(test_user.name).to eq name
    end

    it 'returns an object with an email atrribute' do
      expect(test_user.email).to eq email
    end

    it 'returns an object with password attribute' do
      expect(test_user.password).to eq password
    end
  end

  describe '#all' do
    it 'returns the saved user' do
      expect(User.all).to include test_user
    end
  end

  describe '#crypt_password' do
    it 'returns a hashed password' do
      expect(User.crypt_password(password)).to eq(password)
    end
  end
end
