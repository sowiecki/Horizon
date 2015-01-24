require 'rails_helper'



RSpec.describe User, :type => :model do
<<<<<<< HEAD

  it { should have_many(:issues) }
  # let(:user) { User.new(username: "Jebidiah", email: 'test@aol.com', twitter: 'Whee')}
=======
  let(:user) { User.new(username: "Jebidiah", email: 'test@aol.com', twitter: 'Whee')}
>>>>>>> f91ed6ca5f51271b11b7314bcb104672ac18c78f

  describe "validates presence" do
    it { expect(user).to validate_presence_of(:username) }
    it { expect(user).to validate_presence_of(:twitter) }
  end

  describe "validates uniqueness" do
    it { expect(user).to validate_uniqueness_of(:email) }
  end

  # describe "excepts associations" do
  #   it { expect(user).to have_many() }
  # end

  describe "restricts email format" do
    it { expect(user).to allow_value('text@email.com').for(:email) }
    it { expect(user).to_not allow_value('textemail.com').for(:email) }
  end

  describe "restricts username format" do
    it { expect(user).to allow_value('username').for(:username) }
    it { expect(user).to_not allow_value('user name').for(:username) }
    it { expect(user).to_not allow_value(' ').for(:username) }
  end
end
