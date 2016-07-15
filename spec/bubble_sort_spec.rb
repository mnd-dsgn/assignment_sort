require 'bubble_sort'

describe "#bubble_sort" do 
  let (:small_array) {[3,2,1]}
  let(:array){[7, 5, 1, 4, 4, 4, 519, 290, 123098]}
  let(:neg_array){[1, -5, -2, 1, 12, 4098, -39]}

  it "returns a sorted array" do 
    expect(bubble_sort(array)).to eq(array.sort)
  end

  it "returns a sorted array given an array with negative values" do 
    expect(bubble_sort(neg_array)).to eq(neg_array.sort)
  end

  it "returns a sorted array" do 
    expect(bubble_sort(small_array)).to eq(small_array.sort)
  end

end