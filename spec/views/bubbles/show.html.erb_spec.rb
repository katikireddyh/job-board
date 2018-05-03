require 'rails_helper'

RSpec.describe "bubbles/show", type: :view do
  before(:each) do
    @bubble = assign(:bubble, Bubble.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
