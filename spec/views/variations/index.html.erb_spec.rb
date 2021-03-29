require 'rails_helper'

RSpec.describe "variations/index", type: :view do
  before(:each) do
    assign(:variations, [
      Variation.create!(
        sku: "Sku",
        stock: 2,
        product: nil,
        color: nil,
        size: nil
      ),
      Variation.create!(
        sku: "Sku",
        stock: 2,
        product: nil,
        color: nil,
        size: nil
      )
    ])
  end

  it "renders a list of variations" do
    render
    assert_select "tr>td", text: "Sku".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
