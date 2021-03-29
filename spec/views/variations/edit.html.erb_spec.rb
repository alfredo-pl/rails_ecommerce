require 'rails_helper'

RSpec.describe "variations/edit", type: :view do
  before(:each) do
    @variation = assign(:variation, Variation.create!(
      sku: "MyString",
      stock: 1,
      product: nil,
      color: nil,
      size: nil
    ))
  end

  it "renders the edit variation form" do
    render

    assert_select "form[action=?][method=?]", variation_path(@variation), "post" do

      assert_select "input[name=?]", "variation[sku]"

      assert_select "input[name=?]", "variation[stock]"

      assert_select "input[name=?]", "variation[product_id]"

      assert_select "input[name=?]", "variation[color_id]"

      assert_select "input[name=?]", "variation[size_id]"
    end
  end
end
