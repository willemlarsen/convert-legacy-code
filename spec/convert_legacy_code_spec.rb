require ('rspec')
require('convert_legacy_code.rb')

describe('switcharoo') do
  it('reverses the key and the value in an object with one key') do
    expect(switcharoo({ 1 => "A"})).to eq({ "A" => 1})
  end
end
