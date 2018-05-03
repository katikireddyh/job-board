require 'rails_helper'

RSpec.describe "bubbles/index", type: :view do
  before(:each) do
    assign(:bubbles, [
      Bubble.create!(),
      Bubble.create!()
    ])
  end

  it "renders a list of bubbles" do
    render
  end
end
