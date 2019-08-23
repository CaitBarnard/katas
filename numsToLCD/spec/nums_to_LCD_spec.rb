# "  |", " - ", " _|", "|_ ", "|_|",  

LCDdigits ={ 1 => [ "   ",
                    "  |",
                    "  |"],
             2 => [ " _ ",
                    " _|",
                    "|_ "],
             3 => [ " _ ",
                    " _|",
                    " _|"],
             4 => [ "   ",
                    "|_|",
                    "  |"],
             5 => [ " _ ",
                    "|_ ",
                    " _|"],
             6 => [ " _ ",
                    "|_ ",
                    "|_|"],
             7 => [ " _ ",
                    "  |",
                    "  |"],
             8 => [ " _ ",
                    "|_|",
                    "|_|"],
             9 => [ " _ ",
                    "|_|",
                    " _|"]
}

def convert_to_LCD(num)
     num_to_digits = num.digits
    converted_string_rows = ["", "", ""]
    LCDdigits.each {|key, rows| num_to_digits.each do |digit|
            if key == digit
                converted_string_rows[0] << rows[0]
                converted_string_rows[1] << rows[1]
                converted_string_rows[2] << rows[2]
            end
        end
    }
    converted_string_rows.join
end

describe "LCD" do

    it "changes 1 to LCD equivalent" do
        expect(convert_to_LCD(1)).to eq("   " + "  |" + "  |")
    end

    it "changes 2 to LCD equivalent" do
        expect(convert_to_LCD(2)).to eq(" _ " + " _|" + "|_ ")
    end

    it "changes 3 to LCD equivalent" do
        expect(convert_to_LCD(3)).to eq(" _ " + " _|" + " _|")
    end

    it "changes 4 to LCD equivalent" do
        expect(convert_to_LCD(4)).to eq("   " + "|_|" + "  |")
    end
    
    it "changes 5 to LCD equivalent" do
        expect(convert_to_LCD(5)).to eq(" _ " + "|_ " + " _|")
    end

    it "changes 6 to LCD equivalent" do
        expect(convert_to_LCD(6)).to eq(" _ " + "|_ " + "|_|")
    end
    
    it "changes 7 to LCD equivalent" do
        expect(convert_to_LCD(7)).to eq(" _ " + "  |" + "  |")
    end
    
    it "changes 8 to LCD equivalent" do
        expect(convert_to_LCD(8)).to eq(" _ " + "|_|" + "|_|")
    end
    
    it "changes 9 to LCD equivalent" do
        expect(convert_to_LCD(9)).to eq(" _ " + "|_|" + " _|")
    end
    
    it "changes 11 to LCD equivalent" do
        expect(convert_to_LCD(11)).to eq("      " + "  |  |" + "  |  |")
    end

    it "changes 34 to LCD equivalent" do
        expect(convert_to_LCD(34)).to eq(" _    " + " _||_|" + " _|  |")
    end
   
    it "changes 33333 to LCD equivalent" do
        expect(convert_to_LCD(33333)).to eq(" _  _  _  _  _ " + " _| _| _| _| _|" + " _| _| _| _| _|")
    end

end