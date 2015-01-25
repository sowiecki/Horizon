require 'rails_helper'



RSpec.describe User, :type => :model do

  let(:user) { User.create(username: "Jebidiah", twitter: 'Whee')}
  let(:issue) {issue = Issue.create(title: "Big Issue")}


  describe "issues have an array of experts" do
    it { expect(issue.experts).to eq([])}
  end

  describe "validates presence of username" do
    it { expect(user).to validate_presence_of(:username) }
  end

  describe "validates presence of twitter" do
    it { expect(user).to validate_presence_of(:twitter) }
  end

  describe "validates uniqueness of twitter handle" do
    it {expect(user).to validate_uniqueness_of(:twitter)}
  end

  describe "twitter format should not be case sensitive" do
    it {expect(user.twitter).to eq('whee')}
  end


  describe "restricts username format" do
    it { expect(user).to allow_value('username').for(:username) }
    it { expect(user).to_not allow_value('user name').for(:username) }
    it { expect(user).to_not allow_value(' ').for(:username) }
  end
end
