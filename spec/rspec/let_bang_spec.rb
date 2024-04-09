RSpec.describe "let!" do

  count2 = 0
  invocation_order = []

  let!(:count) do
    invocation_order << :let!
    count2 += 1
  end

  it "calls the helper method in a before hook" do
    invocation_order << :example
    expect(invocation_order).to eq([:let!, :example])
    expect(count).to eq(1)
  end
end
