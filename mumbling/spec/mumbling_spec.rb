def mumble_letters(str)
    finalstr = ""
    pos = 0
    str.downcase.split("") { |i| 
        finalstr << i.capitalize  << i*pos << "-"
        pos += 1 
    }
    finalstr.chop
end

describe "Mumbling" do

    it "test empty string" do
        expect(mumble_letters("")).to eq("")
    end

    it "test string with single character" do
        expect(mumble_letters("A")).to eq("A")
    end

    it "test string with 2 characters" do
        expect(mumble_letters("ab")).to eq("A-Bb")
    end

    it "test string with 3 characters" do
        expect(mumble_letters("abc")).to eq("A-Bb-Ccc")
    end

    it "test multiple strings with various cases" do
        expect(mumble_letters("abc")).to eq("A-Bb-Ccc")
        expect(mumble_letters("ABC")).to eq("A-Bb-Ccc")
        expect(mumble_letters("QwerTY")).to eq("Q-Ww-Eee-Rrrr-Ttttt-Yyyyyy")
    end
end