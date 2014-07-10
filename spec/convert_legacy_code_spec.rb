require ('rspec')
require('convert_legacy_code.rb')

describe('convert_legacy_code') do
  describe('when there is an object') do
    it('reverses the key and the value in an object with one key') do
      expect(switcharoo({ 1 => "A"})).to eq({ "A" => 1})
    end
    it('reverses the key and the value in an object with multiple keys') do
      expect(switcharoo({1 => "A", 2 => "B"})).to eq({"A" => 1, "B" => 2})
    end
  end

  describe("break_up_and_reassign") do
    it("breaks up the elements of an array within an object into separate strings") do
     expect(break_up_and_reassign({["A", "B", "C"] => 1})).to eq({"A" => 1, "B" => 1, "C" => 1})
    end
  end
  describe "when given many keys with values equal to arrays of many elements" do 
    it "transforms it to another hash where each element in the arrays has its value 
    as the key of the array to which it originally belonged" do 
      expect(convert_legacy_code({ 1  => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
                                   2  => ["D", "G"],
                                   3  => ["B", "C", "M", "P"],
                                   4  => ["F", "H", "V", "W", "Y"],
                                   5  => ["K"],
                                   8  => ["J", "X"],
                                   10 => ["Q", "Z"]
                                  })).to eq({ "A" => 1, "B" => 3,  "C" => 3, "D" => 2, "E" => 1,
                                       "F" => 4, "G" => 2,  "H" => 4, "I" => 1, "J" => 8,
                                       "K" => 5, "L" => 1,  "M" => 3, "N" => 1, "O" => 1,
                                       "P" => 3, "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
                                       "U" => 1, "V" => 4,  "W" => 4, "X" => 8, "Y" => 4,
                                       "Z" => 10
                                        })
    end
  end
end



