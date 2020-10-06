require_relative '../lib/sum_of_3_or_5_multiples'

describe "sum_of_3_or_5_multiples" do
    it "calculate the sum of all 3 or 5 multiples under 11" do
        expect(sum_of_3_or_5_multiples(11)).to eq(33)
    end

    it "calculate the sum of all 3 or 5 multiples under 1000" do
        expect(sum_of_3_or_5_multiples(1000)).to eq(233168)
    end

    it "calculate the sum of all 3 or 5 multiples under 3" do
        expect(sum_of_3_or_5_multiples(3)).to eq(nil)
    end

    it "calculate the sum of all 3 or 5 multiples under 10" do
        expect(sum_of_3_or_5_multiples(10)).to eq(23)
    end
end