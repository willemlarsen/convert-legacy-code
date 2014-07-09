require ('rspec')
require('convert_legacy_code.rb')

describe('switcharoo') do
  it('reverses the key and the value in an object with one key') do
    expect(switcharoo({ 1 => "A"})).to eq({ "A" => 1})
  end
  it('reverses the key and the value in an object with multiple keys') do
    expect(switcharoo({1 => "A", 2 => "B"})). to eq({"A" => 1, "B" => 2})
  end
end


