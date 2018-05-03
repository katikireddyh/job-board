require 'rails_helper'

RSpec.describe "bubbles/new", type: :view do
  before(:each) do
    assign(:bubble, Bubble.new())
  end

  it "renders new bubble form" do
    render

    assert_select "form[action=?][method=?]", bubbles_path, "post" do
    end
  end
end
