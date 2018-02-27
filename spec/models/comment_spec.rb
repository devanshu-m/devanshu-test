require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject {described_class.new(body: "")}

  it "is invalid" do
  	expect(subject).to be_valid
  end

  describe "is invalid without a body" do
  	it {should validate_presence_of (:body)}
  end
end
