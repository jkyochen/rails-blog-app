RSpec.describe "let" do

  count1 = 0
  let(:count) { count1 += 1 }

  it "memoizes the value" do
    expect(count).to eq(1)
    expect(count).to eq(1)
  end

  it "is not cached across examples" do
    expect(count).to eq(2)
  end
end
