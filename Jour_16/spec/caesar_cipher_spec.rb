require_relative '../lib/caesar_cipher'

describe "caesar_cipher" do
    it "Let's try with : What a string" do
        expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    end
end