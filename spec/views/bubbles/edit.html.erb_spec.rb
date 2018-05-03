require 'rails_helper'

RSpec.describe "bubbles/edit", type: :view do
  before(:each) do
    @bubble = assign(:bubble, Bubble.create!())
  end

  it "renders the edit bubble form" do
    render

    assert_select "form[action=?][method=?]", bubble_path(@bubble), "post" do
    end
  end
end
