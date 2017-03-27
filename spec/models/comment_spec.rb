require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject {described_class.new(body: "Some text")}

  it "comment is valid" do
  	expect(subject).to be_valid
  end

  describe "comment is invalid without a body" do
  	it {should validate_presence_of (:body)}
  end
end
