require_relative "../lib/day_trader"

describe "get_best_sell" do
    it "test ([17, 3, 6, 9, 15, 8, 6, 1, 10], 1)" do
        expect(get_best_sell([17, 3, 6, 9, 15, 8, 6, 1, 10], 1)).to eq(12)
    end

    it "test ([17, 3, 6, 9, 15, 8, 6, 1, 10], 5)" do
        expect(get_best_sell([17, 3, 6, 9, 15, 8, 6, 1, 10], 5)).to eq(2)
    end

    it "test ([17, 3, 6, 9, 15, 8, 6, 1, 10], 4)" do
        expect(get_best_sell([17, 3, 6, 9, 15, 8, 6, 1, 10], 4)).to eq(0)
    end
end

describe "day_trader" do
    it "test 17, 3, 6, 9, 15, 8, 6, 1, 10]" do
        expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq(12)
    end
end