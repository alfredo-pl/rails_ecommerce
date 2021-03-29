require 'rails_helper'

RSpec.describe "variations/show", type: :view do
  before(:each) do
    @variation = assign(:variation, Variation.create!(
      sku: "Sku",
      stock: 2,
      product: nil,
      color: nil,
      size: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Sku/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
