require 'rails_helper'

RSpec.describe Post, type: :model do

  subject {described_class.new(title: "Some Title", body: "Some text")}

  it "post is valid" do
  	expect(subject).to be_valid
  end

  describe "post is invalid without a title" do
  	it {should validate_presence_of (:title)}
  end

  describe "post is invalid without a body" do
  	it {should validate_presence_of (:body)}
  end

end
