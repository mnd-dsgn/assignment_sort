require 'merge_sort'

describe "#merge_sort" do 
  let (:small_array) {[3,2,1]}
  let(:array){[7, 5, 1, 4, 4, 4, 519, 290, 123098]}
  let(:neg_array){[1, -5, -2, 1, 12, 4098, -39]}

  it "returns a sorted array" do 
    expect(merge_sort(array)).to eq(array.sort)
  end

  it "returns a sorted array given an array with negative values" do 
    expect(merge_sort(neg_array)).to eq(neg_array.sort)
  end

  it "returns a sorted array for small array" do 
    expect(merge_sort(small_array)).to eq(small_array.sort)
  end

end

describe "#merge" do 
  let(:sorted1) { [-5, 3, 8, 9, 10] }
  let(:sorted2) { [-8234, -4, 0, 1, 5, 5678] }
  let(:combo) { sorted1 + sorted2 }

  it "given two arrays, returns a single sorted array" do 
    expect(merge(sorted1 , sorted2)).to eq(([-5, 3, 8, 9, 10] + [-8234, -4, 0, 1, 5, 5678]).sort)
  end

end